package fast.dic.dict.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.ironsource.U3;
import com.parse.ParseException;
import com.vungle.ads.internal.protos.Sdk;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDListPath;
import fast.dic.dict.helpers.FDMainDatabaseHelper;
import fast.dic.dict.helpers.FDSoundEffect;
import fast.dic.dict.helpers.database.couchbase.FDCouchbaseLiteManager;
import fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder;
import fast.dic.dict.services.FDAds;
import fast.dic.dict.services.analytics.FirebaseSegmentUser;
import fast.dic.dict.utils.BuildConfigExtKt;
import fast.dic.dict.utils.LoggerKt;
import io.appmetrica.analytics.AppMetricaDefaultValues;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: MainViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0005;<=>?B5\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u001a\u0002\b\u000e¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.J\u0006\u0010/\u001a\u00020,J\u0006\u00100\u001a\u00020,J\u0006\u00101\u001a\u00020,J\u0006\u00102\u001a\u00020,J\u0010\u00103\u001a\u00020,2\b\b\u0002\u00104\u001a\u000205J\u0006\u00106\u001a\u00020,J\u000e\u00107\u001a\u00020,2\u0006\u00108\u001a\u000209J\u0006\u0010:\u001a\u00020,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0 ¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020$0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010%\u001a\b\u0012\u0004\u0012\u00020$0 ¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\"R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020(0 ¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\"Ê\u0001\u0002\bA¨\u0006@"}, d2 = {"Lfast/dic/dict/activities/MainViewModel;", "Landroidx/lifecycle/ViewModel;", "fdMainDatabaseHelper", "Lfast/dic/dict/helpers/FDMainDatabaseHelper;", "fdListPath", "Lfast/dic/dict/helpers/FDListPath;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "fdAds", "Lfast/dic/dict/services/FDAds;", "soundEffect", "Lfast/dic/dict/helpers/FDSoundEffect;", "<init>", "(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/FDSoundEffect;)V", "Ljavax/inject/Inject;", "couchbaseLiteManager", "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", "_migrationUiState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;", "migrationUiState", "Lkotlinx/coroutines/flow/StateFlow;", "getMigrationUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "_copyUiState", "Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "copyUiState", "getCopyUiState", "_intentActions", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lfast/dic/dict/activities/MainViewModel$IntentAction;", "intentActions", "Lkotlinx/coroutines/flow/SharedFlow;", "getIntentActions", "()Lkotlinx/coroutines/flow/SharedFlow;", "_floatingWindowCommands", "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;", "floatingWindowCommands", "getFloatingWindowCommands", "_adCommands", "Lfast/dic/dict/activities/MainViewModel$AdCommand;", "adCommands", "getAdCommands", "handleIntent", "", "intent", "Landroid/content/Intent;", "checkFloatingWindow", "requestAdInit", "segmentUserByApplicationBuild", "migrateDatabase", "copyMainDatabase", U3.i.i, "", "performTapVibration", "initializeAdsForFreeUsers", "activity", "Landroid/app/Activity;", "showBannerAds", "MigrationUiState", "CopyUiState", "IntentAction", "FloatingWindowCommand", "AdCommand", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class MainViewModel extends ViewModel {
    private final MutableSharedFlow<AdCommand> _adCommands;
    private final MutableStateFlow<CopyUiState> _copyUiState;
    private final MutableSharedFlow<FloatingWindowCommand> _floatingWindowCommands;
    private final MutableSharedFlow<IntentAction> _intentActions;
    private final MutableStateFlow<MigrationUiState> _migrationUiState;
    private final SharedFlow<AdCommand> adCommands;
    private final StateFlow<CopyUiState> copyUiState;
    private final FDCouchbaseLiteManager couchbaseLiteManager;
    private final FDAds fdAds;
    private final FDListPath fdListPath;
    private final FDMainDatabaseHelper fdMainDatabaseHelper;
    private final SharedFlow<FloatingWindowCommand> floatingWindowCommands;
    private final SharedFlow<IntentAction> intentActions;
    private final LocalStorage localStorage;
    private final StateFlow<MigrationUiState> migrationUiState;
    private final FDSoundEffect soundEffect;

    @Inject
    public MainViewModel(FDMainDatabaseHelper fdMainDatabaseHelper, FDListPath fdListPath, LocalStorage localStorage, FDAds fdAds, FDSoundEffect soundEffect) {
        Intrinsics.checkNotNullParameter(fdMainDatabaseHelper, "fdMainDatabaseHelper");
        Intrinsics.checkNotNullParameter(fdListPath, "fdListPath");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(fdAds, "fdAds");
        Intrinsics.checkNotNullParameter(soundEffect, "soundEffect");
        this.fdMainDatabaseHelper = fdMainDatabaseHelper;
        this.fdListPath = fdListPath;
        this.localStorage = localStorage;
        this.fdAds = fdAds;
        this.soundEffect = soundEffect;
        this.couchbaseLiteManager = FDCouchbaseLiteManager.INSTANCE.getInstance();
        MutableStateFlow<MigrationUiState> MutableStateFlow = StateFlowKt.MutableStateFlow(MigrationUiState.Idle.INSTANCE);
        this._migrationUiState = MutableStateFlow;
        this.migrationUiState = MutableStateFlow;
        MutableStateFlow<CopyUiState> MutableStateFlow2 = StateFlowKt.MutableStateFlow(CopyUiState.Idle.INSTANCE);
        this._copyUiState = MutableStateFlow2;
        this.copyUiState = MutableStateFlow2;
        MutableSharedFlow<IntentAction> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 1, null, 5, null);
        this._intentActions = mutableSharedFlowMutableSharedFlow$default;
        this.intentActions = mutableSharedFlowMutableSharedFlow$default;
        MutableSharedFlow<FloatingWindowCommand> mutableSharedFlowMutableSharedFlow$default2 = SharedFlowKt.MutableSharedFlow$default(0, 1, null, 5, null);
        this._floatingWindowCommands = mutableSharedFlowMutableSharedFlow$default2;
        this.floatingWindowCommands = mutableSharedFlowMutableSharedFlow$default2;
        MutableSharedFlow<AdCommand> mutableSharedFlowMutableSharedFlow$default3 = SharedFlowKt.MutableSharedFlow$default(0, 1, null, 5, null);
        this._adCommands = mutableSharedFlowMutableSharedFlow$default3;
        this.adCommands = mutableSharedFlowMutableSharedFlow$default3;
    }

    public final StateFlow<MigrationUiState> getMigrationUiState() {
        return this.migrationUiState;
    }

    public final StateFlow<CopyUiState> getCopyUiState() {
        return this.copyUiState;
    }

    public final SharedFlow<IntentAction> getIntentActions() {
        return this.intentActions;
    }

    public final SharedFlow<FloatingWindowCommand> getFloatingWindowCommands() {
        return this.floatingWindowCommands;
    }

    public final SharedFlow<AdCommand> getAdCommands() {
        return this.adCommands;
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainViewModel$handleIntent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainViewModel$handleIntent$1", f = "MainViewModel.kt", i = {0, 0, 1, 1, 1, 2, 2, 2, 2, 2}, l = {72, 89, 105}, m = "invokeSuspend", n = {"incomingWord", TranslateLanguage.ITALIAN, "action", "textToProcess", "bundle", "action", U3.f.d, "sss", "a", "bundle"}, nl = {73, AppMetricaDefaultValues.DEFAULT_DISPATCH_PERIOD_SECONDS, 106}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$4"}, v = 2)
    static final class C45021 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Intent $intent;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final /* synthetic */ MainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45021(Intent intent, MainViewModel mainViewModel, Continuation<? super C45021> continuation) {
            super(2, continuation);
            this.$intent = intent;
            this.this$0 = mainViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45021(this.$intent, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45021) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x01cb, code lost:
        
            if (r34.this$0._intentActions.emit(new fast.dic.dict.activities.MainViewModel.IntentAction.ShowWordModal(r4), r34) == r3) goto L54;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r35) {
            /*
                Method dump skipped, instruction units count: 497
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.activities.MainViewModel.C45021.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void handleIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45021(intent, this, null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainViewModel$checkFloatingWindow$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainViewModel$checkFloatingWindow$1", f = "MainViewModel.kt", i = {0, 1}, l = {124, 126}, m = "invokeSuspend", n = {"isFloatingWindowsEnabled", "isFloatingWindowsEnabled"}, nl = {126, 128}, s = {"Z$0", "Z$0"}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        boolean Z$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
        
            if (r1._floatingWindowCommands.emit(fast.dic.dict.activities.MainViewModel.FloatingWindowCommand.Stop.INSTANCE, r5) == r0) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto Lf
                goto L17
            Lf:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L17:
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L54
                goto L72
            L1b:
                kotlin.ResultKt.throwOnFailure(r6)
                fast.dic.dict.activities.MainViewModel r6 = fast.dic.dict.activities.MainViewModel.this     // Catch: java.lang.Throwable -> L54
                fast.dic.dict.database.LocalStorage r6 = fast.dic.dict.activities.MainViewModel.access$getLocalStorage$p(r6)     // Catch: java.lang.Throwable -> L54
                boolean r6 = r6.getFloatingWindow()     // Catch: java.lang.Throwable -> L54
                fast.dic.dict.activities.MainViewModel r1 = fast.dic.dict.activities.MainViewModel.this
                if (r6 == 0) goto L40
                kotlinx.coroutines.flow.MutableSharedFlow r1 = fast.dic.dict.activities.MainViewModel.access$get_floatingWindowCommands$p(r1)     // Catch: java.lang.Throwable -> L54
                fast.dic.dict.activities.MainViewModel$FloatingWindowCommand$Start r2 = fast.dic.dict.activities.MainViewModel.FloatingWindowCommand.Start.INSTANCE     // Catch: java.lang.Throwable -> L54
                r4 = r5
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Throwable -> L54
                r5.Z$0 = r6     // Catch: java.lang.Throwable -> L54
                r5.label = r3     // Catch: java.lang.Throwable -> L54
                java.lang.Object r5 = r1.emit(r2, r4)     // Catch: java.lang.Throwable -> L54
                if (r5 != r0) goto L72
                goto L53
            L40:
                kotlinx.coroutines.flow.MutableSharedFlow r1 = fast.dic.dict.activities.MainViewModel.access$get_floatingWindowCommands$p(r1)     // Catch: java.lang.Throwable -> L54
                fast.dic.dict.activities.MainViewModel$FloatingWindowCommand$Stop r3 = fast.dic.dict.activities.MainViewModel.FloatingWindowCommand.Stop.INSTANCE     // Catch: java.lang.Throwable -> L54
                r4 = r5
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Throwable -> L54
                r5.Z$0 = r6     // Catch: java.lang.Throwable -> L54
                r5.label = r2     // Catch: java.lang.Throwable -> L54
                java.lang.Object r5 = r1.emit(r3, r4)     // Catch: java.lang.Throwable -> L54
                if (r5 != r0) goto L72
            L53:
                return r0
            L54:
                r5 = move-exception
                fast.dic.dict.utils.Logger r6 = fast.dic.dict.utils.LoggerKt.getLogger()
                java.lang.String r5 = r5.getMessage()
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "MainViewModel: checkFloatingWindow failed: "
                r0.<init>(r1)
                java.lang.StringBuilder r5 = r0.append(r5)
                java.lang.String r5 = r5.toString()
                r0 = 0
                java.lang.Object[] r0 = new java.lang.Object[r0]
                r6.error(r5, r0)
            L72:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.activities.MainViewModel.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void checkFloatingWindow() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainViewModel$requestAdInit$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainViewModel$requestAdInit$1", f = "MainViewModel.kt", i = {}, l = {ParseException.SCRIPT_ERROR}, m = "invokeSuspend", n = {}, nl = {ParseException.VALIDATION_ERROR}, s = {}, v = 2)
    static final class C45041 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45041(Continuation<? super C45041> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainViewModel.this.new C45041(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45041) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (MainViewModel.this._adCommands.emit(AdCommand.Initialize.INSTANCE, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Throwable th) {
                LoggerKt.getLogger().error("MainViewModel: requestAdInit failed: " + th.getMessage(), new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    public final void requestAdInit() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45041(null), 3, null);
    }

    public final void segmentUserByApplicationBuild() {
        if (BuildConfigExtKt.isNoPurchase()) {
            FirebaseCrashlytics.getInstance().setCustomKey(U3.i.U, "no_purchase_flavor");
            FirebaseSegmentUser.INSTANCE.addAttribute("no_purchase_flavor");
            return;
        }
        if (BuildConfigExtKt.isPlayStore()) {
            FirebaseCrashlytics.getInstance().setCustomKey(U3.i.U, "google_flavor");
            FirebaseSegmentUser.INSTANCE.addAttribute("google_flavor");
        } else if (BuildConfigExtKt.isBazaar()) {
            FirebaseCrashlytics.getInstance().setCustomKey(U3.i.U, "bazaar_flavor");
            FirebaseSegmentUser.INSTANCE.addAttribute("bazaar_flavor");
        } else if (BuildConfigExtKt.isIranApps()) {
            FirebaseCrashlytics.getInstance().setCustomKey(U3.i.U, "iranapps_flavor");
            FirebaseSegmentUser.INSTANCE.addAttribute("iranapps_flavor");
        }
    }

    public final void migrateDatabase() {
        LoggerKt.getLogger().debug("MainViewModel: migrateDatabase started", new Object[0]);
        if (this.couchbaseLiteManager.isDatabaseMigrated(null) && new FDFavouriteFolder().getCurrentFolder() != null) {
            LoggerKt.getLogger().debug("MainViewModel: Ignore migrating in pre-check", new Object[0]);
            return;
        }
        this.couchbaseLiteManager.copyDataBase();
        if (this.fdListPath.isDBExistsInDocumentCB()) {
            LoggerKt.getLogger().debug("MainViewModel: DB already exists in document CB, skipping showing loader", new Object[0]);
            return;
        }
        this._migrationUiState.setValue(new MigrationUiState.Show(R.string.ready_for_move_my_words));
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45031(null), 2, null);
        LoggerKt.getLogger().debug("MainViewModel: migrateDatabase ended", new Object[0]);
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainViewModel$migrateDatabase$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainViewModel$migrateDatabase$1", f = "MainViewModel.kt", i = {}, l = {Sdk.SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, Sdk.SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, Sdk.SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE}, m = "invokeSuspend", n = {}, nl = {Sdk.SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE, Sdk.SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE, Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE}, s = {}, v = 2)
    static final class C45031 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        C45031(Continuation<? super C45031> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MainViewModel.this.new C45031(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45031) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x009a, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(kotlinx.coroutines.Dispatchers.getMain(), new fast.dic.dict.activities.MainViewModel.C45031.C14101(r9.this$0, null), r9) == r1) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00d0, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(kotlinx.coroutines.Dispatchers.getMain(), new fast.dic.dict.activities.MainViewModel.C45031.C14101(r9.this$0, null), r9) == r1) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00f3, code lost:
        
            return r1;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 246
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.activities.MainViewModel.C45031.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: fast.dic.dict.activities.MainViewModel$migrateDatabase$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.activities.MainViewModel$migrateDatabase$1$1", f = "MainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
        static final class C14101 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ MainViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14101(MainViewModel mainViewModel, Continuation<? super C14101> continuation) {
                super(2, continuation);
                this.this$0 = mainViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14101(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14101) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0._migrationUiState.setValue(MigrationUiState.Hide.INSTANCE);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static /* synthetic */ void copyMainDatabase$default(MainViewModel mainViewModel, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        mainViewModel.copyMainDatabase(z);
    }

    public final void copyMainDatabase(boolean forceClose) {
        LoggerKt.getLogger().debug("MainViewModel: copyMainDatabase started", new Object[0]);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45011(forceClose, this, null), 2, null);
        LoggerKt.getLogger().debug("MainViewModel: copyMainDatabase ended", new Object[0]);
    }

    /* JADX INFO: renamed from: fast.dic.dict.activities.MainViewModel$copyMainDatabase$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.activities.MainViewModel$copyMainDatabase$1", f = "MainViewModel.kt", i = {0, 0, 1, 1, 2, 2}, l = {293, 293, 293}, m = "invokeSuspend", n = {"hasCopied", "stopCopingDatabase", "hasCopied", "stopCopingDatabase", "hasCopied", "stopCopingDatabase"}, nl = {297, 297, 298}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"}, v = 2)
    static final class C45011 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $forceClose;
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ MainViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45011(boolean z, MainViewModel mainViewModel, Continuation<? super C45011> continuation) {
            super(2, continuation);
            this.$forceClose = z;
            this.this$0 = mainViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45011(this.$forceClose, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45011) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:81:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0183, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(kotlinx.coroutines.Dispatchers.getMain(), new fast.dic.dict.activities.MainViewModel.C45011.C14091(r21.this$0, r9, null), r21) == r5) goto L79;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01e2, code lost:
        
            if (kotlinx.coroutines.BuildersKt.withContext(kotlinx.coroutines.Dispatchers.getMain(), new fast.dic.dict.activities.MainViewModel.C45011.C14091(r21.this$0, r9, null), r21) == r5) goto L79;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x020e, code lost:
        
            return r5;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v10, types: [boolean] */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v20 */
        /* JADX WARN: Type inference failed for: r12v21 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r22) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 528
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.activities.MainViewModel.C45011.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: fast.dic.dict.activities.MainViewModel$copyMainDatabase$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.activities.MainViewModel$copyMainDatabase$1$1", f = "MainViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
        static final class C14091 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Ref.BooleanRef $hasCopied;
            int label;
            final /* synthetic */ MainViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14091(MainViewModel mainViewModel, Ref.BooleanRef booleanRef, Continuation<? super C14091> continuation) {
                super(2, continuation);
                this.this$0 = mainViewModel;
                this.$hasCopied = booleanRef;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14091(this.this$0, this.$hasCopied, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14091) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0._copyUiState.setValue(CopyUiState.Hide.INSTANCE);
                    this.this$0._copyUiState.setValue(new CopyUiState.Completed(this.$hasCopied.element));
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final void performTapVibration() {
        try {
            this.soundEffect.tapVibration();
        } catch (Exception e) {
            LoggerKt.getLogger().error("MainViewModel: performTapVibration failed: " + e.getMessage(), new Object[0]);
        }
    }

    public final void initializeAdsForFreeUsers(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            this.fdAds.initializeAds(activity);
        } catch (Exception e) {
            LoggerKt.getLogger().error("MainViewModel: initializeAdsForFreeUsers failed: " + e.getMessage(), new Object[0]);
        }
    }

    public final void showBannerAds() {
        try {
            if (this.fdAds.hasActivityContext()) {
                this.fdAds.showBanner();
            }
        } catch (Exception e) {
            LoggerKt.getLogger().error("MainViewModel: showBannerAds failed: " + e.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$MigrationUiState;", "", "<init>", "()V", "Idle", LogConstants.EVENT_SHOW, LogConstants.EVENT_AD_HIDE, "Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Hide;", "Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Idle;", "Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class MigrationUiState {
        public /* synthetic */ MigrationUiState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Idle;", "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Idle extends MigrationUiState {
            public static final Idle INSTANCE = new Idle();

            private Idle() {
                super(null);
            }
        }

        private MigrationUiState() {
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;", "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;", "messageResId", "", "<init>", "(I)V", "getMessageResId", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class Show extends MigrationUiState {
            private final int messageResId;

            public static /* synthetic */ Show copy$default(Show show, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = show.messageResId;
                }
                return show.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getMessageResId() {
                return this.messageResId;
            }

            public final Show copy(int messageResId) {
                return new Show(messageResId);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Show) && this.messageResId == ((Show) other).messageResId;
            }

            public int hashCode() {
                return Integer.hashCode(this.messageResId);
            }

            public String toString() {
                return "Show(messageResId=" + this.messageResId + ")";
            }

            public Show(int i) {
                super(null);
                this.messageResId = i;
            }

            public final int getMessageResId() {
                return this.messageResId;
            }
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Hide;", "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Hide extends MigrationUiState {
            public static final Hide INSTANCE = new Hide();

            private Hide() {
                super(null);
            }
        }
    }

    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "", "<init>", "()V", "Idle", LogConstants.EVENT_SHOW, LogConstants.EVENT_AD_HIDE, "StorageAlert", "Completed", "Lfast/dic/dict/activities/MainViewModel$CopyUiState$Completed;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState$Hide;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState$Idle;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState$Show;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class CopyUiState {
        public /* synthetic */ CopyUiState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$CopyUiState$Idle;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Idle extends CopyUiState {
            public static final Idle INSTANCE = new Idle();

            private Idle() {
                super(null);
            }
        }

        private CopyUiState() {
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$CopyUiState$Show;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "messageResId", "", "<init>", "(I)V", "getMessageResId", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class Show extends CopyUiState {
            private final int messageResId;

            public static /* synthetic */ Show copy$default(Show show, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = show.messageResId;
                }
                return show.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getMessageResId() {
                return this.messageResId;
            }

            public final Show copy(int messageResId) {
                return new Show(messageResId);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Show) && this.messageResId == ((Show) other).messageResId;
            }

            public int hashCode() {
                return Integer.hashCode(this.messageResId);
            }

            public String toString() {
                return "Show(messageResId=" + this.messageResId + ")";
            }

            public Show(int i) {
                super(null);
                this.messageResId = i;
            }

            public final int getMessageResId() {
                return this.messageResId;
            }
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$CopyUiState$Hide;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Hide extends CopyUiState {
            public static final Hide INSTANCE = new Hide();

            private Hide() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J;\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0014\u0010\u001a\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0083\u0004J\n\u0010\u001d\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "titleResId", "", "databaseSize", "", "availableSpace", "ctaResId", "exitApp", "", "<init>", "(IJJIZ)V", "getTitleResId", "()I", "getDatabaseSize", "()J", "getAvailableSpace", "getCtaResId", "getExitApp", "()Z", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class StorageAlert extends CopyUiState {
            private final long availableSpace;
            private final int ctaResId;
            private final long databaseSize;
            private final boolean exitApp;
            private final int titleResId;

            public static /* synthetic */ StorageAlert copy$default(StorageAlert storageAlert, int i, long j, long j2, int i2, boolean z, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    i = storageAlert.titleResId;
                }
                if ((i3 & 2) != 0) {
                    j = storageAlert.databaseSize;
                }
                if ((i3 & 4) != 0) {
                    j2 = storageAlert.availableSpace;
                }
                if ((i3 & 8) != 0) {
                    i2 = storageAlert.ctaResId;
                }
                if ((i3 & 16) != 0) {
                    z = storageAlert.exitApp;
                }
                long j3 = j2;
                return storageAlert.copy(i, j, j3, i2, z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getTitleResId() {
                return this.titleResId;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final long getDatabaseSize() {
                return this.databaseSize;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final long getAvailableSpace() {
                return this.availableSpace;
            }

            /* JADX INFO: renamed from: component4, reason: from getter */
            public final int getCtaResId() {
                return this.ctaResId;
            }

            /* JADX INFO: renamed from: component5, reason: from getter */
            public final boolean getExitApp() {
                return this.exitApp;
            }

            public final StorageAlert copy(int titleResId, long databaseSize, long availableSpace, int ctaResId, boolean exitApp) {
                return new StorageAlert(titleResId, databaseSize, availableSpace, ctaResId, exitApp);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof StorageAlert)) {
                    return false;
                }
                StorageAlert storageAlert = (StorageAlert) other;
                return this.titleResId == storageAlert.titleResId && this.databaseSize == storageAlert.databaseSize && this.availableSpace == storageAlert.availableSpace && this.ctaResId == storageAlert.ctaResId && this.exitApp == storageAlert.exitApp;
            }

            public int hashCode() {
                return (((((((Integer.hashCode(this.titleResId) * 31) + Long.hashCode(this.databaseSize)) * 31) + Long.hashCode(this.availableSpace)) * 31) + Integer.hashCode(this.ctaResId)) * 31) + Boolean.hashCode(this.exitApp);
            }

            public String toString() {
                return "StorageAlert(titleResId=" + this.titleResId + ", databaseSize=" + this.databaseSize + ", availableSpace=" + this.availableSpace + ", ctaResId=" + this.ctaResId + ", exitApp=" + this.exitApp + ")";
            }

            public StorageAlert(int i, long j, long j2, int i2, boolean z) {
                super(null);
                this.titleResId = i;
                this.databaseSize = j;
                this.availableSpace = j2;
                this.ctaResId = i2;
                this.exitApp = z;
            }

            public final int getTitleResId() {
                return this.titleResId;
            }

            public final long getDatabaseSize() {
                return this.databaseSize;
            }

            public final long getAvailableSpace() {
                return this.availableSpace;
            }

            public final int getCtaResId() {
                return this.ctaResId;
            }

            public final boolean getExitApp() {
                return this.exitApp;
            }
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$CopyUiState$Completed;", "Lfast/dic/dict/activities/MainViewModel$CopyUiState;", "success", "", "<init>", "(Z)V", "getSuccess", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class Completed extends CopyUiState {
            private final boolean success;

            public static /* synthetic */ Completed copy$default(Completed completed, boolean z, int i, Object obj) {
                if ((i & 1) != 0) {
                    z = completed.success;
                }
                return completed.copy(z);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final boolean getSuccess() {
                return this.success;
            }

            public final Completed copy(boolean success) {
                return new Completed(success);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Completed) && this.success == ((Completed) other).success;
            }

            public int hashCode() {
                return Boolean.hashCode(this.success);
            }

            public String toString() {
                return "Completed(success=" + this.success + ")";
            }

            public Completed(boolean z) {
                super(null);
                this.success = z;
            }

            public final boolean getSuccess() {
                return this.success;
            }
        }
    }

    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$IntentAction;", "", "<init>", "()V", "Search", "OpenWord", "ShowWordModal", "Lfast/dic/dict/activities/MainViewModel$IntentAction$OpenWord;", "Lfast/dic/dict/activities/MainViewModel$IntentAction$Search;", "Lfast/dic/dict/activities/MainViewModel$IntentAction$ShowWordModal;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class IntentAction {
        public /* synthetic */ IntentAction(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$IntentAction$Search;", "Lfast/dic/dict/activities/MainViewModel$IntentAction;", "text", "", "<init>", "(Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class Search extends IntentAction {
            private final String text;

            public static /* synthetic */ Search copy$default(Search search, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = search.text;
                }
                return search.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getText() {
                return this.text;
            }

            public final Search copy(String text) {
                Intrinsics.checkNotNullParameter(text, "text");
                return new Search(text);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Search) && Intrinsics.areEqual(this.text, ((Search) other).text);
            }

            public int hashCode() {
                return this.text.hashCode();
            }

            public String toString() {
                return "Search(text=" + this.text + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Search(String text) {
                super(null);
                Intrinsics.checkNotNullParameter(text, "text");
                this.text = text;
            }

            public final String getText() {
                return this.text;
            }
        }

        private IntentAction() {
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$IntentAction$OpenWord;", "Lfast/dic/dict/activities/MainViewModel$IntentAction;", "word", "", "<init>", "(Ljava/lang/String;)V", "getWord", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class OpenWord extends IntentAction {
            private final String word;

            public static /* synthetic */ OpenWord copy$default(OpenWord openWord, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = openWord.word;
                }
                return openWord.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getWord() {
                return this.word;
            }

            public final OpenWord copy(String word) {
                Intrinsics.checkNotNullParameter(word, "word");
                return new OpenWord(word);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof OpenWord) && Intrinsics.areEqual(this.word, ((OpenWord) other).word);
            }

            public int hashCode() {
                return this.word.hashCode();
            }

            public String toString() {
                return "OpenWord(word=" + this.word + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OpenWord(String word) {
                super(null);
                Intrinsics.checkNotNullParameter(word, "word");
                this.word = word;
            }

            public final String getWord() {
                return this.word;
            }
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$IntentAction$ShowWordModal;", "Lfast/dic/dict/activities/MainViewModel$IntentAction;", "argsBundle", "Landroid/os/Bundle;", "<init>", "(Landroid/os/Bundle;)V", "getArgsBundle", "()Landroid/os/Bundle;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class ShowWordModal extends IntentAction {
            private final Bundle argsBundle;

            public static /* synthetic */ ShowWordModal copy$default(ShowWordModal showWordModal, Bundle bundle, int i, Object obj) {
                if ((i & 1) != 0) {
                    bundle = showWordModal.argsBundle;
                }
                return showWordModal.copy(bundle);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Bundle getArgsBundle() {
                return this.argsBundle;
            }

            public final ShowWordModal copy(Bundle argsBundle) {
                Intrinsics.checkNotNullParameter(argsBundle, "argsBundle");
                return new ShowWordModal(argsBundle);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ShowWordModal) && Intrinsics.areEqual(this.argsBundle, ((ShowWordModal) other).argsBundle);
            }

            public int hashCode() {
                return this.argsBundle.hashCode();
            }

            public String toString() {
                return "ShowWordModal(argsBundle=" + this.argsBundle + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ShowWordModal(Bundle argsBundle) {
                super(null);
                Intrinsics.checkNotNullParameter(argsBundle, "argsBundle");
                this.argsBundle = argsBundle;
            }

            public final Bundle getArgsBundle() {
                return this.argsBundle;
            }
        }
    }

    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;", "", "<init>", "()V", "Start", "Stop", "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Start;", "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Stop;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class FloatingWindowCommand {
        public /* synthetic */ FloatingWindowCommand(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Start;", "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Start extends FloatingWindowCommand {
            public static final Start INSTANCE = new Start();

            private Start() {
                super(null);
            }
        }

        private FloatingWindowCommand() {
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand$Stop;", "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Stop extends FloatingWindowCommand {
            public static final Stop INSTANCE = new Stop();

            private Stop() {
                super(null);
            }
        }
    }

    /* JADX INFO: compiled from: MainViewModel.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0001\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$AdCommand;", "", "<init>", "()V", LogConstants.EVENT_INITIALIZE, "Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class AdCommand {
        public /* synthetic */ AdCommand(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: MainViewModel.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/activities/MainViewModel$AdCommand$Initialize;", "Lfast/dic/dict/activities/MainViewModel$AdCommand;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Initialize extends AdCommand {
            public static final Initialize INSTANCE = new Initialize();

            private Initialize() {
                super(null);
            }
        }

        private AdCommand() {
        }
    }
}
