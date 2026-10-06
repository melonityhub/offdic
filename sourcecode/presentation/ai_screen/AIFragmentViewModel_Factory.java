package fast.dic.dict.presentation.ai_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class AIFragmentViewModel_Factory implements Factory<AIFragmentViewModel> {
    private final Provider<LocalStorage> localStorageProvider;

    private AIFragmentViewModel_Factory(Provider<LocalStorage> provider) {
        this.localStorageProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public AIFragmentViewModel get() {
        return newInstance(this.localStorageProvider.get());
    }

    public static AIFragmentViewModel_Factory create(Provider<LocalStorage> provider) {
        return new AIFragmentViewModel_Factory(provider);
    }

    public static AIFragmentViewModel newInstance(LocalStorage localStorage) {
        return new AIFragmentViewModel(localStorage);
    }
}
