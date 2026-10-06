package fast.dic.dict.presentation.history_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class HistoryAdapter_Factory implements Factory<HistoryAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public HistoryAdapter get() {
        return newInstance();
    }

    public static HistoryAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static HistoryAdapter newInstance() {
        return new HistoryAdapter();
    }

    private static final class InstanceHolder {
        static final HistoryAdapter_Factory INSTANCE = new HistoryAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
