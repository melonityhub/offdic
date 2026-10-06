package fast.dic.dict.presentation.sort_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class SortDialogAdapter_Factory implements Factory<SortDialogAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public SortDialogAdapter get() {
        return newInstance();
    }

    public static SortDialogAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static SortDialogAdapter newInstance() {
        return new SortDialogAdapter();
    }

    private static final class InstanceHolder {
        static final SortDialogAdapter_Factory INSTANCE = new SortDialogAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
