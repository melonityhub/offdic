package fast.dic.dict.utils;

import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.services.parse.FDParseUser;
import kotlin.Metadata;

/* JADX INFO: compiled from: FDParseUserExtension.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\f\u0010\u0003\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\f\u0010\u0004\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u0006\u0010\u0003\u001a\u00020\u0001\u001a\u0006\u0010\u0005\u001a\u00020\u0001\u001a\f\u0010\u0005\u001a\u00020\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0006"}, d2 = {"isLoggedIn", "", "Lcom/parse/ParseUser;", "hasFreePlan", "hasRemoveAdsPlan", "hasSubscription", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class FDParseUserExtensionKt {
    public static final boolean isLoggedIn(ParseUser parseUser) {
        return parseUser != null;
    }

    public static final boolean isLoggedIn() {
        return ParseUser.getCurrentUser() != null;
    }

    public static final boolean hasFreePlan(ParseUser parseUser) {
        if (!isLoggedIn(parseUser)) {
            return true;
        }
        FDParseUser fDParseUser = parseUser instanceof FDParseUser ? (FDParseUser) parseUser : null;
        return fDParseUser != null && fDParseUser.isFree();
    }

    public static final boolean hasRemoveAdsPlan(ParseUser parseUser) {
        if (!isLoggedIn(parseUser)) {
            return false;
        }
        FDParseUser fDParseUser = parseUser instanceof FDParseUser ? (FDParseUser) parseUser : null;
        return fDParseUser != null && fDParseUser.hasPlan1InView();
    }

    public static final boolean hasFreePlan() {
        if (!isLoggedIn()) {
            return true;
        }
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        return fDParseUser != null && fDParseUser.isFree();
    }

    public static final boolean hasSubscription() {
        if (!isLoggedIn()) {
            return false;
        }
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        return fDParseUser != null && fDParseUser.hasPlan2Or3();
    }

    public static final boolean hasSubscription(ParseUser parseUser) throws ParseException {
        if (!isLoggedIn(parseUser)) {
            return false;
        }
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        return fDParseUser != null && fDParseUser.hasPlan2Or3();
    }
}
