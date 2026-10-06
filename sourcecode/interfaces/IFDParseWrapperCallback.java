package fast.dic.dict.interfaces;

import com.parse.ParseException;
import com.parse.ParseObject;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.FDPurchased;
import io.sentry.SentryBaseEvent;
import kotlin.Metadata;

/* JADX INFO: compiled from: IFDParseWrapperCallback.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lfast/dic/dict/interfaces/IFDParseWrapperCallback;", "", "onSuccess", "", SentryBaseEvent.JsonKeys.USER, "Lcom/parse/ParseObject;", "fdPurchased", "Lfast/dic/dict/services/parse/FDPurchased;", "onFailure", "error", "Lcom/parse/ParseException;", "beforeGetUserSession", "currentUser", "Lfast/dic/dict/services/parse/FDParseUser;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface IFDParseWrapperCallback {
    void beforeGetUserSession(FDParseUser currentUser, FDPurchased fdPurchased);

    void onFailure(ParseException error, FDPurchased fdPurchased);

    void onSuccess(ParseObject user, FDPurchased fdPurchased);
}
