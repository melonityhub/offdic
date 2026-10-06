package fast.dic.dict.presentation.profile_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class ProfileFragment_MembersInjector implements MembersInjector<ProfileFragment> {
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;
    private final Provider<FDHistory> historyProvider;

    private ProfileFragment_MembersInjector(Provider<FDHistory> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        this.historyProvider = provider;
        this.firebaseUserPropertiesManagerProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ProfileFragment profileFragment) {
        BaseFragment_MembersInjector.injectHistory(profileFragment, this.historyProvider.get());
        injectFirebaseUserPropertiesManager(profileFragment, this.firebaseUserPropertiesManagerProvider.get());
    }

    public static MembersInjector<ProfileFragment> create(Provider<FDHistory> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        return new ProfileFragment_MembersInjector(provider, provider2);
    }

    public static void injectFirebaseUserPropertiesManager(ProfileFragment profileFragment, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        profileFragment.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }
}
