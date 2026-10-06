package fast.dic.dict.presentation.sort_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class SortDialogViewModel_Factory implements Factory<SortDialogViewModel> {
    private final Provider<LocalStorage> localStorageProvider;

    private SortDialogViewModel_Factory(Provider<LocalStorage> provider) {
        this.localStorageProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public SortDialogViewModel get() {
        return newInstance(this.localStorageProvider.get());
    }

    public static SortDialogViewModel_Factory create(Provider<LocalStorage> provider) {
        return new SortDialogViewModel_Factory(provider);
    }

    public static SortDialogViewModel newInstance(LocalStorage localStorage) {
        return new SortDialogViewModel(localStorage);
    }
}
