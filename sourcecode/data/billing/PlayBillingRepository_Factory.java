package fast.dic.dict.data.billing;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class PlayBillingRepository_Factory implements Factory<PlayBillingRepository> {
    private final Provider<Context> appContextProvider;

    private PlayBillingRepository_Factory(Provider<Context> provider) {
        this.appContextProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public PlayBillingRepository get() {
        return newInstance(this.appContextProvider.get());
    }

    public static PlayBillingRepository_Factory create(Provider<Context> provider) {
        return new PlayBillingRepository_Factory(provider);
    }

    public static PlayBillingRepository newInstance(Context context) {
        return new PlayBillingRepository(context);
    }
}
