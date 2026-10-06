package fast.dic.dict;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.services.parse.FDParseWrapper;

/* JADX INFO: loaded from: classes11.dex */
public final class FDApplication_MembersInjector implements MembersInjector<FDApplication> {
    private final Provider<FDParseWrapper> fdParseWrapperProvider;
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;

    private FDApplication_MembersInjector(Provider<FDParseWrapper> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        this.fdParseWrapperProvider = provider;
        this.firebaseUserPropertiesManagerProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FDApplication fDApplication) {
        injectFdParseWrapper(fDApplication, this.fdParseWrapperProvider.get());
        injectFirebaseUserPropertiesManager(fDApplication, this.firebaseUserPropertiesManagerProvider.get());
    }

    public static MembersInjector<FDApplication> create(Provider<FDParseWrapper> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        return new FDApplication_MembersInjector(provider, provider2);
    }

    public static void injectFdParseWrapper(FDApplication fDApplication, FDParseWrapper fDParseWrapper) {
        fDApplication.fdParseWrapper = fDParseWrapper;
    }

    public static void injectFirebaseUserPropertiesManager(FDApplication fDApplication, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        fDApplication.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }
}
