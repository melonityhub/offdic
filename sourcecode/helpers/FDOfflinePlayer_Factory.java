package fast.dic.dict.helpers;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class FDOfflinePlayer_Factory implements Factory<FDOfflinePlayer> {
    private final Provider<Context> contextProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private FDOfflinePlayer_Factory(Provider<LocalStorage> provider, Provider<Context> provider2) {
        this.localStorageProvider = provider;
        this.contextProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDOfflinePlayer get() {
        return newInstance(this.localStorageProvider.get(), this.contextProvider.get());
    }

    public static FDOfflinePlayer_Factory create(Provider<LocalStorage> provider, Provider<Context> provider2) {
        return new FDOfflinePlayer_Factory(provider, provider2);
    }

    public static FDOfflinePlayer newInstance(LocalStorage localStorage, Context context) {
        return new FDOfflinePlayer(localStorage, context);
    }
}
