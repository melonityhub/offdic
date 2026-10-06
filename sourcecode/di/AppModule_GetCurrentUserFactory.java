package fast.dic.dict.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import fast.dic.dict.services.parse.FDParseUser;

/* JADX INFO: loaded from: classes11.dex */
public final class AppModule_GetCurrentUserFactory implements Factory<FDParseUser> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDParseUser get() {
        return getCurrentUser();
    }

    public static AppModule_GetCurrentUserFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FDParseUser getCurrentUser() {
        return (FDParseUser) Preconditions.checkNotNullFromProvides(AppModule.INSTANCE.getCurrentUser());
    }

    private static final class InstanceHolder {
        static final AppModule_GetCurrentUserFactory INSTANCE = new AppModule_GetCurrentUserFactory();

        private InstanceHolder() {
        }
    }
}
