package fast.dic.dict.helpers;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class FDListPath_Factory implements Factory<FDListPath> {
    private final Provider<FDFavourite> favoriteWrapperProvider;
    private final Provider<FDHistory> historyWrapperProvider;

    private FDListPath_Factory(Provider<FDHistory> provider, Provider<FDFavourite> provider2) {
        this.historyWrapperProvider = provider;
        this.favoriteWrapperProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDListPath get() {
        return newInstance(this.historyWrapperProvider.get(), this.favoriteWrapperProvider.get());
    }

    public static FDListPath_Factory create(Provider<FDHistory> provider, Provider<FDFavourite> provider2) {
        return new FDListPath_Factory(provider, provider2);
    }

    public static FDListPath newInstance(FDHistory fDHistory, FDFavourite fDFavourite) {
        return new FDListPath(fDHistory, fDFavourite);
    }
}
