package fast.dic.dict.presentation.favorite_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class FavoriteFoldersAdapter_Factory implements Factory<FavoriteFoldersAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FavoriteFoldersAdapter get() {
        return newInstance();
    }

    public static FavoriteFoldersAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FavoriteFoldersAdapter newInstance() {
        return new FavoriteFoldersAdapter();
    }

    private static final class InstanceHolder {
        static final FavoriteFoldersAdapter_Factory INSTANCE = new FavoriteFoldersAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
