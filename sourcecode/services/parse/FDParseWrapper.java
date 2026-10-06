package fast.dic.dict.services.parse;

import android.content.Context;
import com.parse.GetCallback;
import com.parse.LogOutCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.interfaces.IFDParseWrapperCallback;
import fast.dic.dict.utils.Dispatch;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.Util;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDParseWrapper.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\b\u0007\u0012\f\b\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\b\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0002\b\t¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJR\u0010\n\u001a\u00020\u000b2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u000f2\u001a\b\u0002\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u000f2\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/services/parse/FDParseWrapper;", "", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "<init>", "(Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "fetchParseUser", "", "callback", "Lfast/dic/dict/interfaces/IFDParseWrapperCallback;", "onSuccess", "Lkotlin/Function2;", "Lcom/parse/ParseObject;", "Lfast/dic/dict/services/parse/FDPurchased;", "beforeGetUserSession", "Lfast/dic/dict/services/parse/FDParseUser;", "onFailure", "Lkotlin/Function1;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDParseWrapper {
    private final Context context;
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;

    @Inject
    public FDParseWrapper(@ApplicationContext Context context, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        this.context = context;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }

    public final void fetchParseUser(final IFDParseWrapperCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        final FDPurchased fDPurchased = new FDPurchased(this.context, Util.INSTANCE.getAndroidId(this.context));
        if ((fDParseUser != null ? fDParseUser.getEmail() : null) == null) {
            callback.onFailure(null, fDPurchased);
            return;
        }
        final String email = fDParseUser.getEmail();
        callback.beforeGetUserSession(fDParseUser, fDPurchased);
        fDParseUser.fetchInBackground(new GetCallback() { // from class: fast.dic.dict.services.parse.FDParseWrapper$$ExternalSyntheticLambda3
            @Override // com.parse.GetCallback, com.parse.ParseCallback2
            public final void done(ParseObject parseObject, ParseException parseException) {
                FDParseWrapper.fetchParseUser$lambda$0(callback, fDPurchased, this, email, parseObject, parseException);
            }
        });
    }

    static final void fetchParseUser$lambda$0(IFDParseWrapperCallback iFDParseWrapperCallback, final FDPurchased fDPurchased, final FDParseWrapper fDParseWrapper, final String str, ParseObject parseObject, ParseException parseException) {
        if (parseException == null) {
            if (parseObject != null) {
                iFDParseWrapperCallback.onSuccess(parseObject, fDPurchased);
            }
        } else {
            if (parseException.getCode() == 209) {
                ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.services.parse.FDParseWrapper$$ExternalSyntheticLambda2
                    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                    public final void done(ParseException parseException2) {
                        FDParseWrapper.fetchParseUser$lambda$0$1(fDPurchased, fDParseWrapper, str, parseException2);
                    }
                });
            }
            parseException.printStackTrace();
            Logger.INSTANCE.getLogger1().error(parseException.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchParseUser$lambda$0$1(FDPurchased fDPurchased, FDParseWrapper fDParseWrapper, String str, ParseException parseException) {
        fDPurchased.RemovePurchasedPlan1();
        fDPurchased.RemovePurchasedPlan2();
        fDPurchased.RemovePurchasedPlan3();
        fDParseWrapper.firebaseUserPropertiesManager.logUserLogout(str, "invalid_session_token");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void fetchParseUser$default(FDParseWrapper fDParseWrapper, Function2 function2, Function2 function3, Function1 function1, int i, Object obj) throws ParseException {
        if ((i & 2) != 0) {
            function3 = new Function2() { // from class: fast.dic.dict.services.parse.FDParseWrapper$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return FDParseWrapper.fetchParseUser$lambda$1((FDParseUser) obj2, (FDPurchased) obj3);
                }
            };
        }
        if ((i & 4) != 0) {
            function1 = new Function1() { // from class: fast.dic.dict.services.parse.FDParseWrapper$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return FDParseWrapper.fetchParseUser$lambda$2((FDPurchased) obj2);
                }
            };
        }
        fDParseWrapper.fetchParseUser(function2, function3, function1);
    }

    static final Unit fetchParseUser$lambda$1(FDParseUser fDParseUser, FDPurchased fDPurchased) {
        Intrinsics.checkNotNullParameter(fDParseUser, "<unused var>");
        Intrinsics.checkNotNullParameter(fDPurchased, "<unused var>");
        return Unit.INSTANCE;
    }

    static final Unit fetchParseUser$lambda$2(FDPurchased it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final void fetchParseUser(final Function2<? super ParseObject, ? super FDPurchased, Unit> onSuccess, Function2<? super FDParseUser, ? super FDPurchased, Unit> beforeGetUserSession, Function1<? super FDPurchased, Unit> onFailure) throws ParseException {
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        Intrinsics.checkNotNullParameter(beforeGetUserSession, "beforeGetUserSession");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        final FDPurchased fDPurchased = new FDPurchased(this.context, Util.INSTANCE.getAndroidId(this.context));
        if ((fDParseUser != null ? fDParseUser.getEmail() : null) == null) {
            onFailure.invoke(fDPurchased);
            return;
        }
        beforeGetUserSession.invoke(fDParseUser, fDPurchased);
        final String email = fDParseUser.getEmail();
        fDParseUser.fetchInBackground(new GetCallback() { // from class: fast.dic.dict.services.parse.FDParseWrapper$$ExternalSyntheticLambda6
            @Override // com.parse.GetCallback, com.parse.ParseCallback2
            public final void done(ParseObject parseObject, ParseException parseException) {
                FDParseWrapper.fetchParseUser$lambda$3(onSuccess, fDPurchased, this, email, parseObject, parseException);
            }
        });
    }

    static final void fetchParseUser$lambda$3(final Function2 function2, final FDPurchased fDPurchased, final FDParseWrapper fDParseWrapper, final String str, final ParseObject parseObject, ParseException parseException) {
        if (parseException == null) {
            Dispatch.INSTANCE.asyncOnMain(new Function0() { // from class: fast.dic.dict.services.parse.FDParseWrapper$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FDParseWrapper.fetchParseUser$lambda$3$0(parseObject, function2, fDPurchased);
                }
            });
            return;
        }
        if (parseException.getCode() == 209) {
            ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.services.parse.FDParseWrapper$$ExternalSyntheticLambda1
                @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                public final void done(ParseException parseException2) {
                    FDParseWrapper.fetchParseUser$lambda$3$1(fDPurchased, fDParseWrapper, str, parseException2);
                }
            });
        }
        parseException.printStackTrace();
        Logger.INSTANCE.getLogger1().error(parseException.getMessage(), new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit fetchParseUser$lambda$3$0(ParseObject parseObject, Function2 function2, FDPurchased fDPurchased) {
        if (parseObject != null) {
            function2.invoke(parseObject, fDPurchased);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchParseUser$lambda$3$1(FDPurchased fDPurchased, FDParseWrapper fDParseWrapper, String str, ParseException parseException) {
        fDPurchased.RemovePurchasedPlan1();
        fDPurchased.RemovePurchasedPlan2();
        fDPurchased.RemovePurchasedPlan3();
        fDParseWrapper.firebaseUserPropertiesManager.logUserLogout(str, "invalid_session_token");
    }
}
