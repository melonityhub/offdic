package fast.dic.dict.di;

import com.parse.ParseException;
import com.parse.ParseUser;
import dagger.Module;
import dagger.Provides;
import fast.dic.dict.services.parse.FDParseUser;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppModule.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\u00020\u0005H\u0007b\u0002\b\u0006Ê\u0001\u0002\b\bÊ\u0001\u0010\b\t\u0012\f\b\n\u0012\b\b\fJ\u0004\b\t0\u000b¨\u0006\u0007"}, d2 = {"Lfast/dic/dict/di/AppModule;", "", "<init>", "()V", "getCurrentUser", "Lfast/dic/dict/services/parse/FDParseUser;", "Ldagger/Provides;", "app", "Ldagger/Module;", "Ldagger/hilt/InstallIn;", "value", "Ldagger/hilt/components/SingletonComponent;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@Module
public final class AppModule {
    public static final AppModule INSTANCE = new AppModule();

    private AppModule() {
    }

    @Provides
    public final FDParseUser getCurrentUser() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        Intrinsics.checkNotNull(currentUser, "null cannot be cast to non-null type fast.dic.dict.services.parse.FDParseUser");
        return (FDParseUser) currentUser;
    }
}
