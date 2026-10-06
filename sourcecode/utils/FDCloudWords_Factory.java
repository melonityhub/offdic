package fast.dic.dict.utils;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class FDCloudWords_Factory implements Factory<FDCloudWords> {
    private final Provider<FDHistory> historyProvider;

    private FDCloudWords_Factory(Provider<FDHistory> provider) {
        this.historyProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDCloudWords get() {
        return newInstance(this.historyProvider.get());
    }

    public static FDCloudWords_Factory create(Provider<FDHistory> provider) {
        return new FDCloudWords_Factory(provider);
    }

    public static FDCloudWords newInstance(FDHistory fDHistory) {
        return new FDCloudWords(fDHistory);
    }
}
