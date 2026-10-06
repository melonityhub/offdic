package fast.dic.dict.activities;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDListPath;
import fast.dic.dict.helpers.FDMainDatabaseHelper;
import fast.dic.dict.helpers.FDSoundEffect;
import fast.dic.dict.services.FDAds;

/* JADX INFO: loaded from: classes11.dex */
public final class MainViewModel_Factory implements Factory<MainViewModel> {
    private final Provider<FDAds> fdAdsProvider;
    private final Provider<FDListPath> fdListPathProvider;
    private final Provider<FDMainDatabaseHelper> fdMainDatabaseHelperProvider;
    private final Provider<LocalStorage> localStorageProvider;
    private final Provider<FDSoundEffect> soundEffectProvider;

    private MainViewModel_Factory(Provider<FDMainDatabaseHelper> provider, Provider<FDListPath> provider2, Provider<LocalStorage> provider3, Provider<FDAds> provider4, Provider<FDSoundEffect> provider5) {
        this.fdMainDatabaseHelperProvider = provider;
        this.fdListPathProvider = provider2;
        this.localStorageProvider = provider3;
        this.fdAdsProvider = provider4;
        this.soundEffectProvider = provider5;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public MainViewModel get() {
        return newInstance(this.fdMainDatabaseHelperProvider.get(), this.fdListPathProvider.get(), this.localStorageProvider.get(), this.fdAdsProvider.get(), this.soundEffectProvider.get());
    }

    public static MainViewModel_Factory create(Provider<FDMainDatabaseHelper> provider, Provider<FDListPath> provider2, Provider<LocalStorage> provider3, Provider<FDAds> provider4, Provider<FDSoundEffect> provider5) {
        return new MainViewModel_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static MainViewModel newInstance(FDMainDatabaseHelper fDMainDatabaseHelper, FDListPath fDListPath, LocalStorage localStorage, FDAds fDAds, FDSoundEffect fDSoundEffect) {
        return new MainViewModel(fDMainDatabaseHelper, fDListPath, localStorage, fDAds, fDSoundEffect);
    }
}
