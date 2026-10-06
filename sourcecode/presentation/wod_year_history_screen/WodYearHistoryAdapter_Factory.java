package fast.dic.dict.presentation.wod_year_history_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class WodYearHistoryAdapter_Factory implements Factory<WodYearHistoryAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WodYearHistoryAdapter get() {
        return newInstance();
    }

    public static WodYearHistoryAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static WodYearHistoryAdapter newInstance() {
        return new WodYearHistoryAdapter();
    }

    private static final class InstanceHolder {
        static final WodYearHistoryAdapter_Factory INSTANCE = new WodYearHistoryAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
