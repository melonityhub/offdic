package fast.dic.dict.presentation.word_result_screen;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.helpers.FDSoundEffect;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.services.FDAds;
import fast.dic.dict.services.parse.FDParseWrapper;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FDHtml;

/* JADX INFO: loaded from: classes11.dex */
public final class WordResultViewModel_Factory implements Factory<WordResultViewModel> {
    private final Provider<FDConnectivityHelper> connectivityHelperProvider;
    private final Provider<FDDatabaseManager> databaseHelperProvider;
    private final Provider<FDFavourite> favoriteProvider;
    private final Provider<FDAds> fdAdsProvider;
    private final Provider<FDParseWrapper> fdParseWrapperProvider;
    private final Provider<FDCategory> historyCategoryProvider;
    private final Provider<FDHistory> historyProvider;
    private final Provider<FDHtml> htmlProvider;
    private final Provider<LocalStorage> localStorageProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<FDSoundEffect> soundEffectProvider;

    private WordResultViewModel_Factory(Provider<FDHtml> provider, Provider<FDAds> provider2, Provider<FDHistory> provider3, Provider<FDFavourite> provider4, Provider<FDSoundEffect> provider5, Provider<LocalStorage> provider6, Provider<FDCategory> provider7, Provider<FDParseWrapper> provider8, Provider<FDDatabaseManager> provider9, Provider<Context> provider10, Provider<FDConnectivityHelper> provider11) {
        this.htmlProvider = provider;
        this.fdAdsProvider = provider2;
        this.historyProvider = provider3;
        this.favoriteProvider = provider4;
        this.soundEffectProvider = provider5;
        this.localStorageProvider = provider6;
        this.historyCategoryProvider = provider7;
        this.fdParseWrapperProvider = provider8;
        this.databaseHelperProvider = provider9;
        this.mContextProvider = provider10;
        this.connectivityHelperProvider = provider11;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WordResultViewModel get() {
        return newInstance(this.htmlProvider.get(), this.fdAdsProvider.get(), this.historyProvider.get(), this.favoriteProvider.get(), this.soundEffectProvider.get(), this.localStorageProvider.get(), this.historyCategoryProvider.get(), this.fdParseWrapperProvider.get(), this.databaseHelperProvider.get(), this.mContextProvider.get(), this.connectivityHelperProvider.get());
    }

    public static WordResultViewModel_Factory create(Provider<FDHtml> provider, Provider<FDAds> provider2, Provider<FDHistory> provider3, Provider<FDFavourite> provider4, Provider<FDSoundEffect> provider5, Provider<LocalStorage> provider6, Provider<FDCategory> provider7, Provider<FDParseWrapper> provider8, Provider<FDDatabaseManager> provider9, Provider<Context> provider10, Provider<FDConnectivityHelper> provider11) {
        return new WordResultViewModel_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    public static WordResultViewModel newInstance(FDHtml fDHtml, FDAds fDAds, FDHistory fDHistory, FDFavourite fDFavourite, FDSoundEffect fDSoundEffect, LocalStorage localStorage, FDCategory fDCategory, FDParseWrapper fDParseWrapper, FDDatabaseManager fDDatabaseManager, Context context, FDConnectivityHelper fDConnectivityHelper) {
        return new WordResultViewModel(fDHtml, fDAds, fDHistory, fDFavourite, fDSoundEffect, localStorage, fDCategory, fDParseWrapper, fDDatabaseManager, context, fDConnectivityHelper);
    }
}
