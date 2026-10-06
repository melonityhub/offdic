package fast.dic.dict.utils;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;

/* JADX INFO: loaded from: classes11.dex */
public final class FDHtml_Factory implements Factory<FDHtml> {
    private final Provider<Context> contextProvider;
    private final Provider<FDFavourite> favoriteProvider;
    private final Provider<fast.dic.dict.helpers.database.FDResultLabel> resultLabelProvider;

    private FDHtml_Factory(Provider<Context> provider, Provider<FDFavourite> provider2, Provider<fast.dic.dict.helpers.database.FDResultLabel> provider3) {
        this.contextProvider = provider;
        this.favoriteProvider = provider2;
        this.resultLabelProvider = provider3;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDHtml get() {
        return newInstance(this.contextProvider.get(), this.favoriteProvider.get(), this.resultLabelProvider.get());
    }

    public static FDHtml_Factory create(Provider<Context> provider, Provider<FDFavourite> provider2, Provider<fast.dic.dict.helpers.database.FDResultLabel> provider3) {
        return new FDHtml_Factory(provider, provider2, provider3);
    }

    public static FDHtml newInstance(Context context, FDFavourite fDFavourite, fast.dic.dict.helpers.database.FDResultLabel fDResultLabel) {
        return new FDHtml(context, fDFavourite, fDResultLabel);
    }
}
