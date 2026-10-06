package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class SettingFragment_MembersInjector implements MembersInjector<SettingFragment> {
    private final Provider<LocalStorage> localStorageProvider;

    private SettingFragment_MembersInjector(Provider<LocalStorage> provider) {
        this.localStorageProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingFragment settingFragment) {
        injectLocalStorage(settingFragment, this.localStorageProvider.get());
    }

    public static MembersInjector<SettingFragment> create(Provider<LocalStorage> provider) {
        return new SettingFragment_MembersInjector(provider);
    }

    public static void injectLocalStorage(SettingFragment settingFragment, LocalStorage localStorage) {
        settingFragment.localStorage = localStorage;
    }
}
