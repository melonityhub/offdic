package fast.dic.dict.helpers;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.utils.Logger;

/* JADX INFO: loaded from: classes11.dex */
public final class FDMainDatabaseHelper_Factory implements Factory<FDMainDatabaseHelper> {
    private final Provider<Context> contextProvider;
    private final Provider<Logger> loggerProvider;

    private FDMainDatabaseHelper_Factory(Provider<Logger> provider, Provider<Context> provider2) {
        this.loggerProvider = provider;
        this.contextProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDMainDatabaseHelper get() {
        return newInstance(this.loggerProvider.get(), this.contextProvider.get());
    }

    public static FDMainDatabaseHelper_Factory create(Provider<Logger> provider, Provider<Context> provider2) {
        return new FDMainDatabaseHelper_Factory(provider, provider2);
    }

    public static FDMainDatabaseHelper newInstance(Logger logger, Context context) {
        return new FDMainDatabaseHelper(logger, context);
    }
}
