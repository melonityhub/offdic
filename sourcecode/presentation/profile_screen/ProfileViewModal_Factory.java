package fast.dic.dict.presentation.profile_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.services.FDAds;
import fast.dic.dict.services.WebService;
import fast.dic.dict.services.parse.FDParseWrapper;

/* JADX INFO: loaded from: classes11.dex */
public final class ProfileViewModal_Factory implements Factory<ProfileViewModal> {
    private final Provider<FDConnectivityHelper> connectivityHelperProvider;
    private final Provider<FDAds> fdAdsProvider;
    private final Provider<FDParseWrapper> fdParseWrapperProvider;
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;
    private final Provider<LocalStorage> localStorageProvider;
    private final Provider<WebService> webServiceProvider;

    private ProfileViewModal_Factory(Provider<FDAds> provider, Provider<LocalStorage> provider2, Provider<WebService> provider3, Provider<FDConnectivityHelper> provider4, Provider<FDParseWrapper> provider5, Provider<FirebaseUserPropertiesManager> provider6) {
        this.fdAdsProvider = provider;
        this.localStorageProvider = provider2;
        this.webServiceProvider = provider3;
        this.connectivityHelperProvider = provider4;
        this.fdParseWrapperProvider = provider5;
        this.firebaseUserPropertiesManagerProvider = provider6;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public ProfileViewModal get() {
        return newInstance(this.fdAdsProvider.get(), this.localStorageProvider.get(), this.webServiceProvider.get(), this.connectivityHelperProvider.get(), this.fdParseWrapperProvider.get(), this.firebaseUserPropertiesManagerProvider.get());
    }

    public static ProfileViewModal_Factory create(Provider<FDAds> provider, Provider<LocalStorage> provider2, Provider<WebService> provider3, Provider<FDConnectivityHelper> provider4, Provider<FDParseWrapper> provider5, Provider<FirebaseUserPropertiesManager> provider6) {
        return new ProfileViewModal_Factory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static ProfileViewModal newInstance(FDAds fDAds, LocalStorage localStorage, WebService webService, FDConnectivityHelper fDConnectivityHelper, FDParseWrapper fDParseWrapper, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        return new ProfileViewModal(fDAds, localStorage, webService, fDConnectivityHelper, fDParseWrapper, firebaseUserPropertiesManager);
    }
}
