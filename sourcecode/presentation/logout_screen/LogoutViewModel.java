package fast.dic.dict.presentation.logout_screen;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.parse.LogOutCallback;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.DateExtKt;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.PersianDate;
import fast.dic.dict.utils.PersianDateFormat;
import java.util.Date;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogoutViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\nJ\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u0011J\u0018\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0018¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;", "Landroidx/lifecycle/ViewModel;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "<init>", "(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "getLastSyncDate", "", "hasBeenEverSynced", "", "hasSubscriptionPlan", "getSubscriptionExpireDate", "getUserId", "logout", "Landroidx/lifecycle/MutableLiveData;", "convertDateToString", "isCurrentLanguagePersian", "date", "Ljava/util/Date;", "convertOnlyDateToString", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LogoutViewModel extends ViewModel {
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private final LocalStorage localStorage;

    @Inject
    public LogoutViewModel(LocalStorage localStorage, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        this.localStorage = localStorage;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }

    public final String getLastSyncDate() {
        Date defaultsLastSyncDate = this.localStorage.getDefaultsLastSyncDate();
        return defaultsLastSyncDate == null ? "" : convertDateToString(this.localStorage.currentLanguageIsPersian(), defaultsLastSyncDate);
    }

    public final boolean hasBeenEverSynced() {
        return this.localStorage.getDefaultsLastSyncDate() != null;
    }

    public final boolean hasSubscriptionPlan() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        return fDParseUser != null && fDParseUser.hasPlan2Or3();
    }

    public final String getSubscriptionExpireDate() throws ParseException {
        Date hasPlan3ExpireDate;
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || (hasPlan3ExpireDate = fDParseUser.getHasPlan3ExpireDate()) == null) {
            Date hasPlan2ExpireDate = fDParseUser != null ? fDParseUser.getHasPlan2ExpireDate() : null;
            if (hasPlan2ExpireDate == null) {
                return "";
            }
            hasPlan3ExpireDate = hasPlan2ExpireDate;
        }
        return convertOnlyDateToString(this.localStorage.currentLanguageIsPersian(), hasPlan3ExpireDate);
    }

    public final String getUserId() throws ParseException {
        String email;
        ParseUser currentUser = ParseUser.getCurrentUser();
        return (currentUser == null || (email = currentUser.getEmail()) == null) ? "" : email;
    }

    public final MutableLiveData<Boolean> logout() throws ParseException {
        final MutableLiveData<Boolean> mutableLiveData = new MutableLiveData<>();
        ParseUser currentUser = ParseUser.getCurrentUser();
        final String username = currentUser != null ? currentUser.getUsername() : null;
        ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.presentation.logout_screen.LogoutViewModel$$ExternalSyntheticLambda0
            @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
            public final void done(ParseException parseException) {
                LogoutViewModel.logout$lambda$0(this.f$0, username, mutableLiveData, parseException);
            }
        });
        return mutableLiveData;
    }

    static final void logout$lambda$0(LogoutViewModel logoutViewModel, String str, MutableLiveData mutableLiveData, ParseException parseException) {
        logoutViewModel.firebaseUserPropertiesManager.logUserLogout(str, "logout");
        logoutViewModel.localStorage.setOfflineTranslator(false);
        mutableLiveData.postValue(true);
    }

    private final String convertDateToString(boolean isCurrentLanguagePersian, Date date) {
        if (isCurrentLanguagePersian) {
            return FDLanguageWord.INSTANCE.replaceNumbersToFarsi(new PersianDateFormat("Y/m/d H:m:s").format(new PersianDate(date)));
        }
        return DateExtKt.toString$default(date, "yyyy/MM/dd HH:mm:ss", null, 2, null);
    }

    private final String convertOnlyDateToString(boolean isCurrentLanguagePersian, Date date) {
        if (isCurrentLanguagePersian) {
            return FDLanguageWord.INSTANCE.replaceNumbersToFarsi(new PersianDateFormat("Y/m/d").format(new PersianDate(date)));
        }
        return DateExtKt.toString$default(date, "yyyy/MM/dd", null, 2, null);
    }
}
