package fast.dic.dict.presentation.fullscreen_modal;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.services.FDAds;

/* JADX INFO: loaded from: classes11.dex */
public final class FullscreenModal_MembersInjector implements MembersInjector<FullscreenModal> {
    private final Provider<FDAds> fdAdsProvider;
    private final Provider<FDHistory> historyProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private FullscreenModal_MembersInjector(Provider<FDHistory> provider, Provider<FDAds> provider2, Provider<LocalStorage> provider3) {
        this.historyProvider = provider;
        this.fdAdsProvider = provider2;
        this.localStorageProvider = provider3;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FullscreenModal fullscreenModal) {
        BaseFragment_MembersInjector.injectHistory(fullscreenModal, this.historyProvider.get());
        injectFdAds(fullscreenModal, this.fdAdsProvider.get());
        injectLocalStorage(fullscreenModal, this.localStorageProvider.get());
    }

    public static MembersInjector<FullscreenModal> create(Provider<FDHistory> provider, Provider<FDAds> provider2, Provider<LocalStorage> provider3) {
        return new FullscreenModal_MembersInjector(provider, provider2, provider3);
    }

    public static void injectFdAds(FullscreenModal fullscreenModal, FDAds fDAds) {
        fullscreenModal.fdAds = fDAds;
    }

    public static void injectLocalStorage(FullscreenModal fullscreenModal, LocalStorage localStorage) {
        fullscreenModal.localStorage = localStorage;
    }
}
