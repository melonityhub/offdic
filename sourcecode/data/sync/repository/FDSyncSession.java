package fast.dic.dict.data.sync.repository;

import com.parse.FunctionCallback;
import com.parse.ParseCloud;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.data.sync.model.SyncSessionModel;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.StringExtKt;
import java.util.Date;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDSyncSession.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ+\u0010\t\u001a\u00020\n2#\u0010\u000b\u001a\u001f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/data/sync/repository/FDSyncSession;", "", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "getCurrentUser", "Lfast/dic/dict/services/parse/FDParseUser;", "getSession", "", "completion", "Lkotlin/Function1;", "Lfast/dic/dict/data/sync/model/SyncSessionModel;", "Lkotlin/ParameterName;", "name", "result", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDSyncSession {
    private final LocalStorage localStorage;

    @Inject
    public FDSyncSession(LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.localStorage = localStorage;
    }

    public final FDParseUser getCurrentUser() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        if (currentUser instanceof FDParseUser) {
            return (FDParseUser) currentUser;
        }
        return null;
    }

    public final void getSession(final Function1<? super SyncSessionModel, Unit> completion) {
        FDParseUser currentUser = getCurrentUser();
        if (currentUser == null || !currentUser.hasPlan2Or3()) {
            if (completion != null) {
                completion.invoke(new SyncSessionModel(null, null, true, 400, 3, null));
                return;
            }
            return;
        }
        String cbSessionId = this.localStorage.getCbSessionId();
        Date cbExpires = this.localStorage.getCbExpires();
        if (cbSessionId != null && cbExpires != null && cbExpires.after(new Date())) {
            if (completion != null) {
                completion.invoke(new SyncSessionModel(cbSessionId, cbExpires, false, 0, 12, null));
                return;
            }
            return;
        }
        Pair[] pairArr = new Pair[2];
        String sessionToken = currentUser.getSessionToken();
        if (sessionToken == null) {
            sessionToken = "";
        }
        pairArr[0] = TuplesKt.to("sessionToken", sessionToken);
        String email = currentUser.getEmail();
        pairArr[1] = TuplesKt.to("email", email != null ? email : "");
        ParseCloud.callFunctionInBackground("getSyncSession", MapsKt.hashMapOf(pairArr), new FunctionCallback() { // from class: fast.dic.dict.data.sync.repository.FDSyncSession$$ExternalSyntheticLambda0
            @Override // com.parse.FunctionCallback, com.parse.ParseCallback2
            public final void done(Object obj, ParseException parseException) {
                FDSyncSession.getSession$lambda$0(completion, this, obj, parseException);
            }
        });
    }

    static final void getSession$lambda$0(Function1 function1, FDSyncSession fDSyncSession, Object obj, ParseException parseException) {
        if (parseException != null) {
            if (function1 != null) {
                function1.invoke(new SyncSessionModel(null, null, true, parseException.getCode(), 3, null));
            }
        } else if (obj != null) {
            Map map = (Map) obj;
            Object obj2 = map.get("session_id");
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            Object obj3 = map.get("expires");
            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
            SyncSessionModel syncSessionModel = new SyncSessionModel((String) obj2, StringExtKt.currentUTCTimeZoneDate((String) obj3), false, 0, 12, null);
            fDSyncSession.localStorage.setCbSession(syncSessionModel);
            if (function1 != null) {
                function1.invoke(syncSessionModel);
            }
        }
    }
}
