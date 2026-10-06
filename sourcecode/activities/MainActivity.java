package fast.dic.dict.activities;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.speech.SpeechRecognizer;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import androidx.activity.EdgeToEdge;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.Insets;
import androidx.core.view.MenuKt;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentResultListener;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.ActivityKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.fragment.NavHostFragment;
import androidx.navigation.ui.BottomNavigationViewKt;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.navigation.NavigationBarView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.ironsource.U3;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.vungle.ads.internal.protos.Sdk;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.bases.BaseFragment;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.ActivityMainBinding;
import fast.dic.dict.fragments.HomeFragment;
import fast.dic.dict.fragments.SearchFragment;
import fast.dic.dict.fragments.VoiceRecognitionFragment;
import fast.dic.dict.helpers.database.DatabaseListManager;
import fast.dic.dict.helpers.database.couchbase.DatabaseListHelper;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.presentation.word_result_screen.WordResultFragment;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.services.FDFloatingWindowService;
import fast.dic.dict.services.analytics.FirebaseSegmentUser;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.Util;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.LoadingProgress;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u0018H\u0002J\b\u0010\u001c\u001a\u00020\u0018H\u0002J\b\u0010\u001d\u001a\u00020\u0018H\u0002J\u0012\u0010\u001e\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\b\u0010\u001f\u001a\u00020\u0018H\u0002J\b\u0010 \u001a\u00020\u0018H\u0002J\b\u0010!\u001a\u00020\u0018H\u0002J\u0010\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u00182\u0006\u0010#\u001a\u00020&H\u0002J\u0010\u0010'\u001a\u00020\u00182\u0006\u0010(\u001a\u00020)H\u0002J\b\u0010*\u001a\u00020\u0018H\u0002J\u0010\u0010+\u001a\u00020\u00182\u0006\u0010#\u001a\u00020,H\u0002J\b\u0010-\u001a\u00020\u0018H\u0002J\u000e\u0010.\u001a\u00020\u0018H\u0082@¢\u0006\u0002\u0010/J\u000e\u00100\u001a\u00020\u0018H\u0082@¢\u0006\u0002\u0010/J\b\u00101\u001a\u00020\u0018H\u0002J\u000e\u00102\u001a\u00020\u0018H\u0082@¢\u0006\u0002\u0010/J\u0010\u00103\u001a\u00020\u00182\u0006\u00104\u001a\u000205H\u0002J\u0010\u00106\u001a\u00020\u00182\u0006\u00104\u001a\u000205H\u0002J\b\u00107\u001a\u00020\u0018H\u0002J\u0010\u00108\u001a\u00020\u00182\u0006\u00104\u001a\u000205H\u0002J\u0010\u00109\u001a\u00020\u00182\u0006\u00104\u001a\u000205H\u0002J\b\u0010:\u001a\u00020\u0018H\u0014J\u0010\u0010;\u001a\u00020\u00182\u0006\u0010<\u001a\u00020=H\u0002J\u0006\u0010>\u001a\u00020\u0018J\u000e\u0010?\u001a\b\u0012\u0004\u0012\u00020)0@H\u0002J\u0018\u0010A\u001a\u00020\u00182\u0006\u0010B\u001a\u00020)2\u0006\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020\u0018H\u0002J\u000e\u0010F\u001a\u00020\u00182\u0006\u0010#\u001a\u00020GJ\u0006\u0010H\u001a\u00020\u0018J\u0006\u0010I\u001a\u00020\u0018J\u0006\u0010J\u001a\u00020\u0018J\u0014\u0010K\u001a\u00020\u00182\f\b\u0001\u0010L\u001a\u00020):\u0002\bMJ\u0010\u0010N\u001a\u00020\u00182\b\u0010O\u001a\u0004\u0018\u00010\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\bQ¨\u0006P"}, d2 = {"Lfast/dic/dict/activities/MainActivity;", "Lfast/dic/dict/bases/BaseActivity;", "<init>", "()V", "mainViewModel", "Lfast/dic/dict/activities/MainViewModel;", "getMainViewModel", "()Lfast/dic/dict/activities/MainViewModel;", "mainViewModel$delegate", "Lkotlin/Lazy;", "binding", "Lfast/dic/dict/databinding/ActivityMainBinding;", "getBinding", "()Lfast/dic/dict/databinding/ActivityMainBinding;", "setBinding", "(Lfast/dic/dict/databinding/ActivityMainBinding;)V", "loadingProgress", "Lfast/dic/dict/views/LoadingProgress;", "toolbarTitleLiveData", "Landroidx/lifecycle/LiveData;", "", "toolbarTitleObserver", "Landroidx/lifecycle/Observer;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initTheme", "initViewBinding", "initViewModelObservers", "initViewModelLogic", "initNavigation", "initFabButtons", "maybeNavigateToOnboarding", "handleMigrationUiState", "state", "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;", "handleCopyUiState", "Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "showLoading", "messageResId", "", "hideLoading", "showStorageAlert", "Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;", "onCopyCompleted", "collectAdCommands", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectFloatingWindowCommands", "startFloatingWindowServiceIfAllowed", "collectIntentActions", "setupToolbarTitle", "navController", "Landroidx/navigation/NavController;", "setupBottomNavigation", "setupBackPressedDispatcher", "onMicClicked", "onCameraClicked", U3.i.u0, "handleFloatingIntent", "intent", "Landroid/content/Intent;", "checkAndUpdateTabbarMenuAfterLogin", "getFragmentRoots", "", "selectDestination", FirebaseAnalytics.Param.DESTINATION, "toolbar", "Landroidx/appcompat/widget/Toolbar;", "getAdvForFreeUsers", "changeFloatingButtonVisibility", "", "selectHomeTab", "selectAiTab", "selectMoreTab", "selectTab", "itemId", "Landroidx/annotation/IdRes;", "updateTitle", "title", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class MainActivity extends Hilt_MainActivity {
    public ActivityMainBinding binding;
    private LoadingProgress loadingProgress;

    /* JADX INFO: renamed from: mainViewModel$delegate, reason: from kotlin metadata */
    private final Lazy mainViewModel;
    private LiveData<String> toolbarTitleLiveData;
    private Observer<String> toolbarTitleObserver;

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$collectAdCommands$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity", f = "MainActivity.kt", i = {}, l = {230}, m = "collectAdCommands", n = {}, nl = {-1}, s = {}, v = 2)
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MainActivity.this.collectAdCommands(this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$collectFloatingWindowCommands$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity", f = "MainActivity.kt", i = {}, l = {242}, m = "collectFloatingWindowCommands", n = {}, nl = {-1}, s = {}, v = 2)
    static final class C44941 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C44941(Continuation<? super C44941> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MainActivity.this.collectFloatingWindowCommands(this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$collectIntentActions$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity", f = "MainActivity.kt", i = {}, l = {266}, m = "collectIntentActions", n = {}, nl = {-1}, s = {}, v = 2)
    static final class C44961 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C44961(Continuation<? super C44961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MainActivity.this.collectIntentActions(this);
        }
    }

    public MainActivity() {
        final MainActivity mainActivity = this;
        final Function0 function0 = null;
        this.mainViewModel = new ViewModelLazy(Reflection.getOrCreateKotlinClass(MainViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.activities.MainActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return mainActivity.get$viewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.activities.MainActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                return mainActivity.get$defaultFactory();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.activities.MainActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.invoke()) == null) ? mainActivity.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    private final MainViewModel getMainViewModel() {
        return (MainViewModel) this.mainViewModel.getValue();
    }

    public final ActivityMainBinding getBinding() {
        ActivityMainBinding activityMainBinding = this.binding;
        if (activityMainBinding != null) {
            return activityMainBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(ActivityMainBinding activityMainBinding) {
        Intrinsics.checkNotNullParameter(activityMainBinding, "<set-?>");
        this.binding = activityMainBinding;
    }

    @Override // fast.dic.dict.bases.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        EdgeToEdge.enable$default(this, null, null, 3, null);
        super.onCreate(savedInstanceState);
        LoggerKt.getLogger().debug("-------------> Main Activity created at " + System.currentTimeMillis(), new Object[0]);
        ActivityMainBinding activityMainBindingInflate = ActivityMainBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityMainBindingInflate, "inflate(...)");
        setBinding(activityMainBindingInflate);
        setContentView(getBinding().getRoot());
        ViewCompat.setOnApplyWindowInsetsListener(getBinding().bottomNavigationView, new OnApplyWindowInsetsListener() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda10
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return MainActivity.onCreate$lambda$0(view, windowInsetsCompat);
            }
        });
        initTheme();
        initViewBinding();
        initViewModelObservers();
        initViewModelLogic(savedInstanceState);
        initNavigation();
        initFabButtons();
        maybeNavigateToOnboarding();
    }

    static final WindowInsetsCompat onCreate$lambda$0(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), v.getPaddingTop(), v.getPaddingRight(), insets2.bottom);
        return insets;
    }

    private final void initTheme() {
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(R.attr.tabBarBackground, typedValue, true);
        getWindow().setBackgroundDrawableResource(typedValue.resourceId);
        AppCompatDelegate.setDefaultNightMode(-1);
    }

    private final void initViewBinding() {
        getBinding().setLifecycleOwner(this);
        BottomNavigationView bottomNavigationView = getBinding().bottomNavigationView;
        Intrinsics.checkNotNullExpressionValue(bottomNavigationView, "bottomNavigationView");
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        ViewExtKt.changeBottomBarFont(bottomNavigationView, applicationContext);
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$initViewModelObservers$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", TranslateLanguage.ITALIAN, "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity$initViewModelObservers$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C44981 extends SuspendLambda implements Function2<MainViewModel.MigrationUiState, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C44981(Continuation<? super C44981> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C44981 c44981 = MainActivity.this.new C44981(continuation);
            c44981.L$0 = obj;
            return c44981;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MainViewModel.MigrationUiState migrationUiState, Continuation<? super Unit> continuation) {
            return ((C44981) create(migrationUiState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MainViewModel.MigrationUiState migrationUiState = (MainViewModel.MigrationUiState) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MainActivity.this.handleMigrationUiState(migrationUiState);
            return Unit.INSTANCE;
        }
    }

    private final void initViewModelObservers() {
        MainActivity mainActivity = this;
        FlowKt.launchIn(FlowKt.onEach(getMainViewModel().getMigrationUiState(), new C44981(null)), LifecycleOwnerKt.getLifecycleScope(mainActivity));
        FlowKt.launchIn(FlowKt.onEach(getMainViewModel().getCopyUiState(), new C44992(null)), LifecycleOwnerKt.getLifecycleScope(mainActivity));
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(mainActivity), null, null, new AnonymousClass3(null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(mainActivity), null, null, new AnonymousClass4(null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(mainActivity), null, null, new AnonymousClass5(null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$initViewModelObservers$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", TranslateLanguage.ITALIAN, "Lfast/dic/dict/activities/MainViewModel$CopyUiState;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity$initViewModelObservers$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C44992 extends SuspendLambda implements Function2<MainViewModel.CopyUiState, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C44992(Continuation<? super C44992> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C44992 c44992 = MainActivity.this.new C44992(continuation);
            c44992.L$0 = obj;
            return c44992;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MainViewModel.CopyUiState copyUiState, Continuation<? super Unit> continuation) {
            return ((C44992) create(copyUiState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MainViewModel.CopyUiState copyUiState = (MainViewModel.CopyUiState) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MainActivity.this.handleCopyUiState(copyUiState);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$initViewModelObservers$3, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity$initViewModelObservers$3", f = "MainActivity.kt", i = {}, l = {131}, m = "invokeSuspend", n = {}, nl = {-1}, s = {}, v = 2)
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainActivity.this.new AnonymousClass3(continuation);
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
                if (MainActivity.this.collectAdCommands(this) == coroutine_suspended) {
                    return coroutine_suspended;
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

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$initViewModelObservers$4, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity$initViewModelObservers$4", f = "MainActivity.kt", i = {}, l = {Sdk.SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "invokeSuspend", n = {}, nl = {-1}, s = {}, v = 2)
    static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainActivity.this.new AnonymousClass4(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (MainActivity.this.collectFloatingWindowCommands(this) == coroutine_suspended) {
                    return coroutine_suspended;
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

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainActivity$initViewModelObservers$5, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainActivity$initViewModelObservers$5", f = "MainActivity.kt", i = {}, l = {Sdk.SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE}, m = "invokeSuspend", n = {}, nl = {-1}, s = {}, v = 2)
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainActivity.this.new AnonymousClass5(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (MainActivity.this.collectIntentActions(this) == coroutine_suspended) {
                    return coroutine_suspended;
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

    private final void initViewModelLogic(Bundle savedInstanceState) {
        getMainViewModel().requestAdInit();
        getMainViewModel().handleIntent(getIntent());
        getMainViewModel().copyMainDatabase(false);
        getMainViewModel().segmentUserByApplicationBuild();
        getMainViewModel().checkFloatingWindow();
    }

    private final void initNavigation() {
        NavController navControllerFindNavController = ActivityKt.findNavController(this, R.id.nav_fragment);
        setSupportActionBar(getBinding().toolbarTop);
        setupToolbarTitle(navControllerFindNavController);
        setupBottomNavigation(navControllerFindNavController);
        setupBackPressedDispatcher();
    }

    private final void initFabButtons() {
        final NavController navControllerFindNavController = ActivityKt.findNavController(this, R.id.nav_fragment);
        getBinding().micButtonFab.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onMicClicked(navControllerFindNavController);
            }
        });
        getBinding().cameraButtonFab.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws ParseException {
                this.f$0.onCameraClicked(navControllerFindNavController);
            }
        });
    }

    private final void maybeNavigateToOnboarding() {
        if (new LocalStorage(this).seenOnBoarding()) {
            return;
        }
        ActivityKt.findNavController(this, R.id.nav_fragment).navigate(R.id.languageOnBoardingFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleMigrationUiState(MainViewModel.MigrationUiState state) {
        if (state instanceof MainViewModel.MigrationUiState.Show) {
            showLoading(((MainViewModel.MigrationUiState.Show) state).getMessageResId());
        } else if (state instanceof MainViewModel.MigrationUiState.Hide) {
            hideLoading();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleCopyUiState(MainViewModel.CopyUiState state) {
        if (state instanceof MainViewModel.CopyUiState.Show) {
            showLoading(((MainViewModel.CopyUiState.Show) state).getMessageResId());
            return;
        }
        if (state instanceof MainViewModel.CopyUiState.Hide) {
            hideLoading();
        } else if (state instanceof MainViewModel.CopyUiState.StorageAlert) {
            showStorageAlert((MainViewModel.CopyUiState.StorageAlert) state);
        } else if (state instanceof MainViewModel.CopyUiState.Completed) {
            onCopyCompleted();
        }
    }

    private final void showLoading(int messageResId) {
        try {
            LoadingProgress loadingProgress = this.loadingProgress;
            if (loadingProgress == null) {
                loadingProgress = new LoadingProgress(this);
                this.loadingProgress = loadingProgress;
            }
            if (loadingProgress != null) {
                loadingProgress.show(getString(messageResId));
            }
        } catch (Exception unused) {
        }
    }

    private final void hideLoading() {
        try {
            LoadingProgress loadingProgress = this.loadingProgress;
            if (loadingProgress != null) {
                loadingProgress.dismiss();
            }
            this.loadingProgress = null;
        } catch (Exception unused) {
        }
    }

    private final void showStorageAlert(MainViewModel.CopyUiState.StorageAlert state) {
        MainActivity mainActivity = this;
        String size = Util.INSTANCE.formatSize(state.getDatabaseSize(), mainActivity);
        String size2 = Util.INSTANCE.formatSize(state.getAvailableSpace(), mainActivity);
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        String string = getString(state.getTitleResId());
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(R.string.for_initialize_app_need_storage, new Object[]{size, size2});
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = getString(state.getCtaResId());
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        fDAlertManger.showAlertWithOutForeCloseApp(string, string2, string3, mainActivity);
    }

    private final void onCopyCompleted() {
        try {
            DatabaseListManager.INSTANCE.initializeInstance(new DatabaseListHelper(this));
        } catch (Exception e) {
            e.printStackTrace();
            LoggerKt.getLogger().error("Fail to initializeInstance: " + e.getMessage(), new Object[0]);
        }
        try {
            getMainViewModel().migrateDatabase();
        } catch (Throwable th) {
            LoggerKt.getLogger().error("MainActivity: migrateDatabase failed: " + th.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object collectAdCommands(Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SharedFlow<MainViewModel.AdCommand> adCommands = getMainViewModel().getAdCommands();
            FlowCollector<? super MainViewModel.AdCommand> flowCollector = new FlowCollector() { // from class: fast.dic.dict.activities.MainActivity.collectAdCommands.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation2) {
                    return emit((MainViewModel.AdCommand) obj2, (Continuation<? super Unit>) continuation2);
                }

                public final Object emit(MainViewModel.AdCommand adCommand, Continuation<? super Unit> continuation2) {
                    if (adCommand instanceof MainViewModel.AdCommand.Initialize) {
                        try {
                            MainActivity.this.getAdvForFreeUsers();
                        } catch (Exception e) {
                            LoggerKt.getLogger().error("Failed to init ads from Activity: " + e.getMessage(), new Object[0]);
                        }
                    }
                    return Unit.INSTANCE;
                }
            };
            anonymousClass1.label = 1;
            if (adCommands.collect(flowCollector, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object collectFloatingWindowCommands(Continuation<? super Unit> continuation) {
        C44941 c44941;
        if (continuation instanceof C44941) {
            c44941 = (C44941) continuation;
            if ((c44941.label & Integer.MIN_VALUE) != 0) {
                c44941.label -= Integer.MIN_VALUE;
            } else {
                c44941 = new C44941(continuation);
            }
        } else {
            c44941 = new C44941(continuation);
        }
        Object obj = c44941.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c44941.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SharedFlow<MainViewModel.FloatingWindowCommand> floatingWindowCommands = getMainViewModel().getFloatingWindowCommands();
            FlowCollector<? super MainViewModel.FloatingWindowCommand> flowCollector = new FlowCollector() { // from class: fast.dic.dict.activities.MainActivity.collectFloatingWindowCommands.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation2) {
                    return emit((MainViewModel.FloatingWindowCommand) obj2, (Continuation<? super Unit>) continuation2);
                }

                public final Object emit(MainViewModel.FloatingWindowCommand floatingWindowCommand, Continuation<? super Unit> continuation2) {
                    if (Intrinsics.areEqual(floatingWindowCommand, MainViewModel.FloatingWindowCommand.Start.INSTANCE)) {
                        MainActivity.this.startFloatingWindowServiceIfAllowed();
                    } else {
                        if (!Intrinsics.areEqual(floatingWindowCommand, MainViewModel.FloatingWindowCommand.Stop.INSTANCE)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        Boxing.boxBoolean(MainActivity.this.stopService(new Intent(MainActivity.this.getApplicationContext(), (Class<?>) FDFloatingWindowService.class)));
                    }
                    return Unit.INSTANCE;
                }
            };
            c44941.label = 1;
            if (floatingWindowCommands.collect(flowCollector, c44941) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startFloatingWindowServiceIfAllowed() {
        if (Build.VERSION.SDK_INT >= 29) {
            LoggerKt.getLogger().debug("Ignore starting FDFloatingWindowService service", new Object[0]);
            return;
        }
        Intent intent = new Intent(getApplicationContext(), (Class<?>) FDFloatingWindowService.class);
        if (Build.VERSION.SDK_INT >= 26) {
            startForegroundService(intent);
        } else {
            startService(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object collectIntentActions(Continuation<? super Unit> continuation) {
        C44961 c44961;
        if (continuation instanceof C44961) {
            c44961 = (C44961) continuation;
            if ((c44961.label & Integer.MIN_VALUE) != 0) {
                c44961.label -= Integer.MIN_VALUE;
            } else {
                c44961 = new C44961(continuation);
            }
        } else {
            c44961 = new C44961(continuation);
        }
        Object obj = c44961.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c44961.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SharedFlow<MainViewModel.IntentAction> intentActions = getMainViewModel().getIntentActions();
            FlowCollector<? super MainViewModel.IntentAction> flowCollector = new FlowCollector() { // from class: fast.dic.dict.activities.MainActivity.collectIntentActions.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation2) {
                    return emit((MainViewModel.IntentAction) obj2, (Continuation<? super Unit>) continuation2);
                }

                public final Object emit(MainViewModel.IntentAction intentAction, Continuation<? super Unit> continuation2) {
                    NavController navControllerFindNavController;
                    NavController navControllerFindNavController2;
                    if (intentAction instanceof MainViewModel.IntentAction.Search) {
                        FragmentExtensionKt.search(MainActivity.this, ((MainViewModel.IntentAction.Search) intentAction).getText());
                        MainActivity.this.setIntent(null);
                    } else if (intentAction instanceof MainViewModel.IntentAction.ShowWordModal) {
                        FragmentManager supportFragmentManager = MainActivity.this.getSupportFragmentManager();
                        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
                        Fragment currentFragment = FragmentExtensionKt.getCurrentFragment(supportFragmentManager);
                        if (currentFragment != null && (navControllerFindNavController2 = FragmentKt.findNavController(currentFragment)) != null) {
                            NavControllerExtensionKt.openModal(navControllerFindNavController2, R.id.wordResultModal, ((MainViewModel.IntentAction.ShowWordModal) intentAction).getArgsBundle());
                        }
                        MainActivity.this.setIntent(null);
                    } else {
                        if (!(intentAction instanceof MainViewModel.IntentAction.OpenWord)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        WordResultFragmentArgs wordResultFragmentArgs = new WordResultFragmentArgs(new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, ((MainViewModel.IntentAction.OpenWord) intentAction).getWord(), null, 0, 1835007, null), false, false, 6, null);
                        FragmentManager supportFragmentManager2 = MainActivity.this.getSupportFragmentManager();
                        Intrinsics.checkNotNullExpressionValue(supportFragmentManager2, "getSupportFragmentManager(...)");
                        Fragment currentFragment2 = FragmentExtensionKt.getCurrentFragment(supportFragmentManager2);
                        if (currentFragment2 != null && (navControllerFindNavController = FragmentKt.findNavController(currentFragment2)) != null) {
                            NavControllerExtensionKt.openModal(navControllerFindNavController, R.id.wordResultModal, wordResultFragmentArgs.toBundle());
                        }
                        MainActivity.this.setIntent(null);
                    }
                    return Unit.INSTANCE;
                }
            };
            c44961.label = 1;
            if (intentActions.collect(flowCollector, c44961) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        throw new KotlinNothingValueException();
    }

    private final void setupToolbarTitle(final NavController navController) {
        getSupportFragmentManager().setFragmentResultListener(WordResultFragment.DISMISS_KEY, this, new FragmentResultListener() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                MainActivity.setupToolbarTitle$lambda$0(navController, this, str, bundle);
            }
        });
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda4
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public final void onDestinationChanged(NavController navController2, NavDestination navDestination, Bundle bundle) {
                MainActivity.setupToolbarTitle$lambda$1(this.f$0, navController2, navDestination, bundle);
            }
        });
        getBinding().toolbarTop.setNavigationOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onBackPressed();
            }
        });
    }

    static final void setupToolbarTitle$lambda$0(NavController navController, MainActivity mainActivity, String str, Bundle bundle) {
        CharSequence label;
        SavedStateHandle savedStateHandle;
        Intrinsics.checkNotNullParameter(str, "<unused var>");
        Intrinsics.checkNotNullParameter(bundle, "<unused var>");
        NavBackStackEntry currentBackStackEntry = navController.getCurrentBackStackEntry();
        String str2 = (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null) ? null : (String) savedStateHandle.get("toolbarTitle");
        NavDestination currentDestination = navController.getCurrentDestination();
        String string = (currentDestination == null || (label = currentDestination.getLabel()) == null) ? null : label.toString();
        if (str2 != null) {
            if (StringsKt.isBlank(str2)) {
                str2 = null;
            }
            if (str2 != null) {
                string = str2;
            }
        }
        ActionBar supportActionBar = mainActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle((CharSequence) null);
        }
        mainActivity.getBinding().toolbarTitle.setText(string);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x009d  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a8  */
    static final void setupToolbarTitle$lambda$1(final MainActivity mainActivity, NavController controller, final NavDestination destination, Bundle bundle) {
        CharSequence label;
        SavedStateHandle savedStateHandle;
        SavedStateHandle savedStateHandle2;
        Observer<String> observer;
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(destination, "destination");
        try {
            FirebaseSegmentUser.INSTANCE.trackScreen(controller, mainActivity);
        } catch (Exception unused) {
        }
        Set<Integer> fragmentRoots = mainActivity.getFragmentRoots();
        mainActivity.checkAndUpdateTabbarMenuAfterLogin();
        mainActivity.getBinding().toolbarTop.setNavigationIcon((fragmentRoots.contains(Integer.valueOf(destination.getId())) || destination.getId() == R.id.languageOnBoardingFragment) ? null : AppCompatResources.getDrawable(mainActivity.getApplicationContext(), R.drawable.back_icon));
        LiveData<String> liveData = mainActivity.toolbarTitleLiveData;
        if (liveData != null && (observer = mainActivity.toolbarTitleObserver) != null) {
            try {
                liveData.removeObserver(observer);
            } catch (Exception unused2) {
            }
        }
        NavBackStackEntry currentBackStackEntry = controller.getCurrentBackStackEntry();
        mainActivity.toolbarTitleLiveData = (currentBackStackEntry == null || (savedStateHandle2 = currentBackStackEntry.getSavedStateHandle()) == null) ? null : savedStateHandle2.getLiveData("toolbarTitle");
        Observer<String> observer2 = new Observer() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MainActivity.setupToolbarTitle$lambda$1$1(destination, mainActivity, (String) obj);
            }
        };
        mainActivity.toolbarTitleObserver = observer2;
        try {
            LiveData<String> liveData2 = mainActivity.toolbarTitleLiveData;
            if (liveData2 != null) {
                Intrinsics.checkNotNull(observer2);
                liveData2.observe(mainActivity, observer2);
            }
        } catch (Exception unused3) {
        }
        String string = (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null) ? null : (String) savedStateHandle.get("toolbarTitle");
        if (string == null) {
            label = destination.getLabel();
            if (label != null) {
                string = label.toString();
            } else {
                string = null;
            }
        } else {
            if (StringsKt.isBlank(string)) {
                string = null;
            }
            if (string == null) {
                label = destination.getLabel();
                if (label != null) {
                    string = label.toString();
                } else {
                    string = null;
                }
            }
        }
        ActionBar supportActionBar = mainActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle((CharSequence) null);
        }
        mainActivity.getBinding().toolbarTitle.setText(string);
        Object systemService = mainActivity.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(mainActivity.getBinding().bottomNavigationView.getWindowToken(), 0);
        int id = destination.getId();
        MaterialToolbar toolbarTop = mainActivity.getBinding().toolbarTop;
        Intrinsics.checkNotNullExpressionValue(toolbarTop, "toolbarTop");
        mainActivity.selectDestination(id, toolbarTop);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupToolbarTitle$lambda$1$1(NavDestination navDestination, MainActivity mainActivity, String t) {
        Intrinsics.checkNotNullParameter(t, "t");
        if (StringsKt.isBlank(t)) {
            t = null;
        }
        if (t == null) {
            CharSequence label = navDestination.getLabel();
            t = label != null ? label.toString() : null;
        }
        ActionBar supportActionBar = mainActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle((CharSequence) null);
        }
        mainActivity.getBinding().toolbarTitle.setText(t);
    }

    private final void setupBottomNavigation(final NavController navController) {
        BottomNavigationView bottomNavigationView = getBinding().bottomNavigationView;
        Intrinsics.checkNotNullExpressionValue(bottomNavigationView, "bottomNavigationView");
        BottomNavigationViewKt.setupWithNavController(bottomNavigationView, navController);
        getBinding().bottomNavigationView.setOnItemReselectedListener(new NavigationBarView.OnItemReselectedListener() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda0
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemReselectedListener
            public final void onNavigationItemReselected(MenuItem menuItem) {
                MainActivity.setupBottomNavigation$lambda$0(this.f$0, navController, menuItem);
            }
        });
    }

    static final void setupBottomNavigation$lambda$0(MainActivity mainActivity, NavController navController, MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        LoggerKt.getLogger().debug("----> setOnItemReselectedListener name is " + ((Object) menuItem.getTitle()), new Object[0]);
        if (menuItem.getItemId() == R.id.homeFragment) {
            NavHostFragment navHostFragment = (NavHostFragment) mainActivity.getSupportFragmentManager().findFragmentById(R.id.nav_fragment);
            Intrinsics.checkNotNull(navHostFragment);
            Fragment fragment = navHostFragment.getChildFragmentManager().getFragments().get(0);
            Intrinsics.checkNotNullExpressionValue(fragment, "get(...)");
            Fragment fragment2 = fragment;
            if (fragment2 instanceof SearchFragment) {
                navController.popBackStack(menuItem.getItemId(), false, false);
                return;
            } else if (fragment2 instanceof HomeFragment) {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(navController, R.id.searchFragment, null, 2, null);
                return;
            } else {
                navController.popBackStack(R.id.searchFragment, false, false);
                return;
            }
        }
        navController.popBackStack(menuItem.getItemId(), false, false);
    }

    private final void setupBackPressedDispatcher() {
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback() { // from class: fast.dic.dict.activities.MainActivity.setupBackPressedDispatcher.1
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                List<Fragment> fragments = MainActivity.this.getSupportFragmentManager().getFragments();
                Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
                if (!fragments.isEmpty() && (CollectionsKt.last((List) fragments) instanceof NavHostFragment)) {
                    Object objLast = CollectionsKt.last((List<? extends Object>) fragments);
                    Intrinsics.checkNotNull(objLast, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
                    fragments = ((NavHostFragment) objLast).getChildFragmentManager().getFragments();
                    Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
                }
                boolean zOnBackPressed = false;
                for (Fragment fragment : fragments) {
                    if ((fragment instanceof BaseFragment) && (zOnBackPressed = ((BaseFragment) fragment).onBackPressed())) {
                        break;
                    }
                }
                if (zOnBackPressed) {
                    return;
                }
                setEnabled(false);
                MainActivity.this.getOnBackPressedDispatcher().onBackPressed();
                setEnabled(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onMicClicked(final NavController navController) {
        SavedStateHandle savedStateHandle;
        getMainViewModel().performTapVibration();
        NavBackStackEntry currentBackStackEntry = navController.getCurrentBackStackEntry();
        if (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null) {
            return;
        }
        MutableLiveData liveData = savedStateHandle.getLiveData(VoiceRecognitionFragment.DETECTED_SENTENCE_KEY);
        MainActivity mainActivity = this;
        liveData.removeObservers(mainActivity);
        savedStateHandle.set(VoiceRecognitionFragment.DETECTED_SENTENCE_KEY, null);
        liveData.observe(mainActivity, new MainActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MainActivity.onMicClicked$lambda$0(navController, (String) obj);
            }
        }));
        NavControllerExtensionKt.openModal$default(navController, R.id.voiceRecognitionFragment, null, 2, null);
    }

    static final Unit onMicClicked$lambda$0(final NavController navController, String str) {
        if (str == null) {
            return Unit.INSTANCE;
        }
        LoggerKt.getLogger().debug("----> VoiceRecognitionFragment detected sentence is " + str, new Object[0]);
        final WordResultFragmentArgs wordResultFragmentArgs = new WordResultFragmentArgs(new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, str, null, 0, 1835007, null), false, true, 2, null);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.onMicClicked$lambda$0$0(navController, wordResultFragmentArgs);
            }
        }, 200L);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onMicClicked$lambda$0$0(NavController navController, WordResultFragmentArgs wordResultFragmentArgs) {
        NavControllerExtensionKt.openModal(navController, R.id.wordResultModal, wordResultFragmentArgs.toBundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCameraClicked(NavController navController) throws ParseException {
        getMainViewModel().performTapVibration();
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || !fDParseUser.isAuthenticated()) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            final FullscreenModal fullscreenModal = new FullscreenModal(true, getString(R.string.image_translator), getString(R.string.image_translator_before_login_desc), getString(R.string.login_or_signup), null, null, null, null, null, 496, null);
            fullscreenModal.show(supportFragmentManager, "");
            fullscreenModal.setOnDismissed(new Function1() { // from class: fast.dic.dict.activities.MainActivity$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MainActivity.onCameraClicked$lambda$0$0(fullscreenModal, ((Boolean) obj).booleanValue());
                }
            });
            return;
        }
        NavControllerExtensionKt.navigateWithSlideAnimation$default(navController, R.id.cameraFragment, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCameraClicked$lambda$0$0(FullscreenModal fullscreenModal, boolean z) throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null && fDParseUser.isAuthenticated()) {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(fullscreenModal), R.id.cameraFragment, null, 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (FDParseUserExtensionKt.hasFreePlan()) {
            getMainViewModel().showBannerAds();
        }
        Intent intent = getIntent();
        if (intent != null) {
            Logger.INSTANCE.getLogger1().debug("MainActivity resume called with intent " + intent, new Object[0]);
            if (intent.hasExtra("fromFloating")) {
                handleFloatingIntent(intent);
            } else {
                getMainViewModel().handleIntent(intent);
            }
        }
    }

    private final void handleFloatingIntent(Intent intent) {
        Object systemService = getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
        ClipData.Item itemAt = primaryClip != null ? primaryClip.getItemAt(0) : null;
        FragmentExtensionKt.search(this, String.valueOf(itemAt != null ? itemAt.getText() : null));
        setIntent(null);
    }

    public final void checkAndUpdateTabbarMenuAfterLogin() {
        if (FDParseUserExtensionKt.isLoggedIn()) {
            Menu menu = getBinding().bottomNavigationView.getMenu();
            Intrinsics.checkNotNullExpressionValue(menu, "getMenu(...)");
            Iterator<MenuItem> it = MenuKt.getChildren(menu).iterator();
            while (it.hasNext()) {
                if (it.next().getItemId() == R.id.profileFragment) {
                    return;
                }
            }
            getBinding().bottomNavigationView.getMenu().clear();
            getBinding().bottomNavigationView.inflateMenu(R.menu.bottom_nav_for_login);
            return;
        }
        Menu menu2 = getBinding().bottomNavigationView.getMenu();
        Intrinsics.checkNotNullExpressionValue(menu2, "getMenu(...)");
        Iterator<MenuItem> it2 = MenuKt.getChildren(menu2).iterator();
        while (it2.hasNext()) {
            if (it2.next().getItemId() == R.id.loginOnboardingFragment) {
                return;
            }
        }
        getBinding().bottomNavigationView.getMenu().clear();
        getBinding().bottomNavigationView.inflateMenu(R.menu.bottom_nav);
    }

    private final Set<Integer> getFragmentRoots() {
        if (FDParseUserExtensionKt.isLoggedIn()) {
            return SetsKt.setOf((Object[]) new Integer[]{Integer.valueOf(R.id.homeFragment), Integer.valueOf(R.id.aiFragment), Integer.valueOf(R.id.favoritesFragment), Integer.valueOf(R.id.profileFragment), Integer.valueOf(R.id.moreFragment)});
        }
        return SetsKt.setOf((Object[]) new Integer[]{Integer.valueOf(R.id.homeFragment), Integer.valueOf(R.id.aiFragment), Integer.valueOf(R.id.favoritesFragment), Integer.valueOf(R.id.loginOnboardingFragment), Integer.valueOf(R.id.moreFragment)});
    }

    private final void selectDestination(int destination, Toolbar toolbar) {
        getBinding().bannerView.setAlpha(1.0f);
        getBinding().bottomNavigationView.setVisibility(0);
        getBinding().floatingButtonsContainer.setVisibility(4);
        if (destination == R.id.languageOnBoardingFragment || destination == R.id.advertisementOnBoardingFragment || destination == R.id.pushNotificationOnBoardingFragment) {
            getBinding().bannerView.setAlpha(0.0f);
            toolbar.setVisibility(0);
            getBinding().bottomNavigationView.setVisibility(8);
        } else if (destination == R.id.homeFragment || destination == R.id.searchFragment || destination == R.id.wordResultScreen || destination == R.id.cameraFragment || destination == R.id.cameraPermissionFragment || destination == R.id.textRecognitionTranslatorFragment) {
            if (destination != R.id.cameraFragment && destination != R.id.cameraPermissionFragment) {
                if (SpeechRecognizer.isRecognitionAvailable(getApplicationContext())) {
                    FloatingActionButton micButtonFab = getBinding().micButtonFab;
                    Intrinsics.checkNotNullExpressionValue(micButtonFab, "micButtonFab");
                    ViewExtKt.showMeNow(micButtonFab);
                } else {
                    FloatingActionButton micButtonFab2 = getBinding().micButtonFab;
                    Intrinsics.checkNotNullExpressionValue(micButtonFab2, "micButtonFab");
                    ViewExtKt.hideMe$default(micButtonFab2, 0L, 1, null);
                }
                if (destination != R.id.textRecognitionTranslatorFragment) {
                    LinearLayout floatingButtonsContainer = getBinding().floatingButtonsContainer;
                    Intrinsics.checkNotNullExpressionValue(floatingButtonsContainer, "floatingButtonsContainer");
                    ViewExtKt.showMeNow(floatingButtonsContainer);
                } else {
                    LinearLayout floatingButtonsContainer2 = getBinding().floatingButtonsContainer;
                    Intrinsics.checkNotNullExpressionValue(floatingButtonsContainer2, "floatingButtonsContainer");
                    ViewExtKt.hideMe$default(floatingButtonsContainer2, 0L, 1, null);
                }
            }
            if (destination == R.id.homeFragment) {
                toolbar.setVisibility(8);
            } else {
                toolbar.setVisibility(0);
            }
            MenuItem menuItemFindItem = getBinding().bottomNavigationView.getMenu().findItem(R.id.homeFragment);
            if (menuItemFindItem != null) {
                menuItemFindItem.setChecked(true);
            }
        } else if (destination == R.id.historyFragment || destination == R.id.directoryWordsFragment || destination == R.id.categoriesFragment || destination == R.id.wordCategoryFragment || destination == R.id.favoritesFragment || destination == R.id.wodHistoryFragment || destination == R.id.wodYearHistoryFragment) {
            toolbar.setVisibility(0);
            MenuItem menuItemFindItem2 = getBinding().bottomNavigationView.getMenu().findItem(R.id.favoritesFragment);
            if (menuItemFindItem2 != null) {
                menuItemFindItem2.setChecked(true);
            }
        } else if (destination == R.id.transactionHistoryFragment || destination == R.id.registrationFormFragment || destination == R.id.finishRegistrationFragment || destination == R.id.updateProfileFragment || destination == R.id.enterPasswordFragment || destination == R.id.loginSignupFragment || destination == R.id.forgetPasswordFragment || destination == R.id.loginOnboardingFragment || destination == R.id.profileFragment) {
            toolbar.setVisibility(0);
            MenuItem menuItemFindItem3 = getBinding().bottomNavigationView.getMenu().findItem(R.id.profileFragment);
            if (menuItemFindItem3 == null) {
                menuItemFindItem3 = getBinding().bottomNavigationView.getMenu().findItem(R.id.loginOnboardingFragment);
            }
            if (menuItemFindItem3 != null) {
                menuItemFindItem3.setChecked(true);
            }
        } else if (destination == R.id.newPricingFragment || destination == R.id.settingFragment || destination == R.id.helpFragment || destination == R.id.moreFragment || destination == R.id.moreInnerFragment || destination == R.id.languageFragment) {
            toolbar.setVisibility(0);
            MenuItem menuItemFindItem4 = getBinding().bottomNavigationView.getMenu().findItem(R.id.moreFragment);
            if (menuItemFindItem4 != null) {
                menuItemFindItem4.setChecked(true);
            }
        } else if (destination == R.id.aiFragment) {
            toolbar.setVisibility(0);
            MenuItem menuItemFindItem5 = getBinding().bottomNavigationView.getMenu().findItem(R.id.aiFragment);
            if (menuItemFindItem5 != null) {
                menuItemFindItem5.setChecked(true);
            }
        }
        if (getBinding().bannerView.getAlpha() > 0.0f) {
            getMainViewModel().showBannerAds();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getAdvForFreeUsers() {
        getMainViewModel().initializeAdsForFreeUsers(this);
    }

    public final void changeFloatingButtonVisibility(boolean state) {
        LinearLayout floatingButtonsContainer = getBinding().floatingButtonsContainer;
        Intrinsics.checkNotNullExpressionValue(floatingButtonsContainer, "floatingButtonsContainer");
        LinearLayout linearLayout = floatingButtonsContainer;
        if (state) {
            ViewExtKt.showMe$default(linearLayout, 0L, 1, null);
        } else {
            ViewExtKt.hideMe$default(linearLayout, 0L, 1, null);
        }
    }

    public final void selectHomeTab() {
        getBinding().bottomNavigationView.setSelectedItemId(R.id.homeFragment);
    }

    public final void selectAiTab() {
        getBinding().bottomNavigationView.setSelectedItemId(R.id.aiFragment);
    }

    public final void selectMoreTab() {
        getBinding().bottomNavigationView.setSelectedItemId(R.id.moreFragment);
    }

    public final void selectTab(int itemId) {
        getBinding().bottomNavigationView.setSelectedItemId(itemId);
    }

    public final void updateTitle(String title) {
        getBinding().toolbarTitle.setText(title);
    }
}
