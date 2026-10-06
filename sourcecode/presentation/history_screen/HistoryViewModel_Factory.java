package fast.dic.dict.presentation.history_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class HistoryViewModel_Factory implements Factory<HistoryViewModel> {
    private final Provider<FDHistory> historyProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private HistoryViewModel_Factory(Provider<FDHistory> provider, Provider<LocalStorage> provider2) {
        this.historyProvider = provider;
        this.localStorageProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public HistoryViewModel get() {
        return newInstance(this.historyProvider.get(), this.localStorageProvider.get());
    }

    public static HistoryViewModel_Factory create(Provider<FDHistory> provider, Provider<LocalStorage> provider2) {
        return new HistoryViewModel_Factory(provider, provider2);
    }

    public static HistoryViewModel newInstance(FDHistory fDHistory, LocalStorage localStorage) {
        return new HistoryViewModel(fDHistory, localStorage);
    }
}
