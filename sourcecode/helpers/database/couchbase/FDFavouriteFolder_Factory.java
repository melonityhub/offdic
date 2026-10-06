package fast.dic.dict.helpers.database.couchbase;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class FDFavouriteFolder_Factory implements Factory<FDFavouriteFolder> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDFavouriteFolder get() {
        return newInstance();
    }

    public static FDFavouriteFolder_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FDFavouriteFolder newInstance() {
        return new FDFavouriteFolder();
    }

    private static final class InstanceHolder {
        static final FDFavouriteFolder_Factory INSTANCE = new FDFavouriteFolder_Factory();

        private InstanceHolder() {
        }
    }
}
