package fast.dic.dict.presentation.favorite_folders_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class FavoriteWordAdapter_Factory implements Factory<FavoriteWordAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FavoriteWordAdapter get() {
        return newInstance();
    }

    public static FavoriteWordAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FavoriteWordAdapter newInstance() {
        return new FavoriteWordAdapter();
    }

    private static final class InstanceHolder {
        static final FavoriteWordAdapter_Factory INSTANCE = new FavoriteWordAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
