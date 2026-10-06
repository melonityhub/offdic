package fast.dic.dict;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.webkit.WebView;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.parse.LogOutCallback;
import com.parse.Parse;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import dagger.hilt.android.HiltAndroidApp;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDOfflineTranslator;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.providers.FDContentProvider;
import fast.dic.dict.services.parse.FDParseSession;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.FDParseWrapper;
import fast.dic.dict.services.parse.FDPurchased;
import fast.dic.dict.utils.AppWidgetHelper;
import fast.dic.dict.utils.LocaleExtKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.LoggerKt;
import java.io.IOException;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: FDApplication.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR#\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010Ê\u0001\u0002\b\u0015¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/FDApplication;", "Landroid/app/Application;", "<init>", "()V", "fdParseWrapper", "Lfast/dic/dict/services/parse/FDParseWrapper;", "getFdParseWrapper", "()Lfast/dic/dict/services/parse/FDParseWrapper;", "setFdParseWrapper", "(Lfast/dic/dict/services/parse/FDParseWrapper;)V", "Ljavax/inject/Inject;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "getFirebaseUserPropertiesManager", "()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "setFirebaseUserPropertiesManager", "(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "onCreate", "", "fetchParseUser", "app", "Ldagger/hilt/android/HiltAndroidApp;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@HiltAndroidApp
public final class FDApplication extends Hilt_FDApplication {

    @Inject
    public FDParseWrapper fdParseWrapper;

    @Inject
    public FirebaseUserPropertiesManager firebaseUserPropertiesManager;

    public final FDParseWrapper getFdParseWrapper() {
        FDParseWrapper fDParseWrapper = this.fdParseWrapper;
        if (fDParseWrapper != null) {
            return fDParseWrapper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fdParseWrapper");
        return null;
    }

    public final void setFdParseWrapper(FDParseWrapper fDParseWrapper) {
        Intrinsics.checkNotNullParameter(fDParseWrapper, "<set-?>");
        this.fdParseWrapper = fDParseWrapper;
    }

    public final FirebaseUserPropertiesManager getFirebaseUserPropertiesManager() {
        FirebaseUserPropertiesManager firebaseUserPropertiesManager = this.firebaseUserPropertiesManager;
        if (firebaseUserPropertiesManager != null) {
            return firebaseUserPropertiesManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("firebaseUserPropertiesManager");
        return null;
    }

    public final void setFirebaseUserPropertiesManager(FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "<set-?>");
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }

    @Override // fast.dic.dict.Hilt_FDApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        LoggerKt.getLogger().debug("-------------> FDApplication created at " + System.currentTimeMillis(), new Object[0]);
        if (FirebaseCrashlytics.getInstance().didCrashOnPreviousExecution()) {
            LoggerKt.getLogger().warn("FastDic: Firebase crashlytics did detected a crash on previous execution.", new Object[0]);
            FirebaseCrashlytics.getInstance().sendUnsentReports();
        }
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        LocalStorage localStorage = new LocalStorage(applicationContext);
        Logger.INSTANCE.getLogger1().debug("----> START APPLICATION AT " + System.currentTimeMillis() + ". isFirstLaunch = " + localStorage.getIsFirstLaunch(), new Object[0]);
        FDApplication fDApplication = this;
        LocaleExtKt.downloadApplicationLanguageResource(fDApplication);
        Locale currentLanguage = localStorage.getCurrentLanguage();
        Context applicationContext2 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
        LocaleExtKt.updateCurrentLanguage(currentLanguage, applicationContext2);
        if (FDContentProvider.INSTANCE.getAppContext() == null) {
            FDContentProvider.INSTANCE.setAppContext(getApplicationContext());
        }
        MlKitContext.initializeIfNeeded(fDApplication);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass1(null), 3, null);
        if (Build.VERSION.SDK_INT >= 28) {
            String processName = Application.getProcessName();
            if (!Intrinsics.areEqual(getPackageName(), processName)) {
                WebView.setDataDirectorySuffix(processName);
            }
        }
        ParseObject.registerSubclass(FDParseUser.class);
        ParseObject.registerSubclass(FDParseSession.class);
        Parse.initialize(new Parse.Configuration.Builder(getApplicationContext()).applicationId(ConfigConstKt.PARSE_APP_ID).clientKey(ConfigConstKt.PARSE_CLIENT_KEY).server(ConfigConstKt.PARSE_SERVER_URL).maxRetries(0).enableLocalDataStore().build());
        ParseUser.enableRevocableSessionInBackground();
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass2(null), 3, null);
        AppWidgetHelper appWidgetHelper = AppWidgetHelper.INSTANCE;
        Context applicationContext3 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext3, "getApplicationContext(...)");
        appWidgetHelper.setAlarmManagerForUpdateWidget(applicationContext3);
    }

    /* JADX INFO: renamed from: fast.dic.dict.FDApplication$onCreate$1, reason: invalid class name */
    /* JADX INFO: compiled from: FDApplication.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.FDApplication$onCreate$1", f = "FDApplication.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FDApplication.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FDOfflineTranslator fDOfflineTranslator = FDOfflineTranslator.INSTANCE;
            Context applicationContext = FDApplication.this.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            fDOfflineTranslator.copyOfflineModel(applicationContext);
            FDOfflineTranslator.INSTANCE.downloadModelIfNeeded();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.FDApplication$onCreate$2, reason: invalid class name */
    /* JADX INFO: compiled from: FDApplication.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.FDApplication$onCreate$2", f = "FDApplication.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FDApplication.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                FDApplication.this.fetchParseUser();
                AppWidgetHelper.INSTANCE.updateWodWidget(FDApplication.this);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fetchParseUser() {
        try {
            getFirebaseUserPropertiesManager().setStandardUserProperties();
            FDParseWrapper.fetchParseUser$default(getFdParseWrapper(), new Function2() { // from class: fast.dic.dict.FDApplication$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return FDApplication.fetchParseUser$lambda$0(this.f$0, (ParseObject) obj, (FDPurchased) obj2);
                }
            }, null, null, 6, null);
        } catch (Exception e) {
            Logger.INSTANCE.getLogger1().error(e.getLocalizedMessage(), new Object[0]);
        }
    }

    static final Unit fetchParseUser$lambda$0(FDApplication fDApplication, ParseObject user, final FDPurchased fdPurchased) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(fdPurchased, "fdPurchased");
        FDParseUser fDParseUser = (FDParseUser) user;
        fdPurchased.ValidateUserPurchase(fDParseUser);
        if (fDParseUser.isDisabled()) {
            FirebaseUserPropertiesManager.logUserLogout$default(fDApplication.getFirebaseUserPropertiesManager(), fDParseUser.getUsername(), null, 2, null);
            ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.FDApplication$$ExternalSyntheticLambda0
                @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                public final void done(ParseException parseException) {
                    FDApplication.fetchParseUser$lambda$0$0(fdPurchased, parseException);
                }
            });
            fDApplication.getFirebaseUserPropertiesManager().setUserDisabled(fDParseUser.isDisabled());
        } else {
            FirebaseUserPropertiesManager firebaseUserPropertiesManager = fDApplication.getFirebaseUserPropertiesManager();
            String username = fDParseUser.getUsername();
            Intrinsics.checkNotNullExpressionValue(username, "getUsername(...)");
            firebaseUserPropertiesManager.setAuthenticatedUserProperties(username, fDParseUser.getEmailVerified());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchParseUser$lambda$0$0(FDPurchased fDPurchased, ParseException parseException) {
        fDPurchased.RemovePurchasedPlan1();
        fDPurchased.RemovePurchasedPlan2();
        fDPurchased.RemovePurchasedPlan2();
    }
}
