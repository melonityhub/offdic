package fast.dic.dict.presentation.select_folder_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class SelectFavoriteFoldersAdapter_Factory implements Factory<SelectFavoriteFoldersAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public SelectFavoriteFoldersAdapter get() {
        return newInstance();
    }

    public static SelectFavoriteFoldersAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static SelectFavoriteFoldersAdapter newInstance() {
        return new SelectFavoriteFoldersAdapter();
    }

    private static final class InstanceHolder {
        static final SelectFavoriteFoldersAdapter_Factory INSTANCE = new SelectFavoriteFoldersAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
