package fast.dic.dict.presentation.wod_history_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class WodMonthHistoryAdapter_Factory implements Factory<WodMonthHistoryAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WodMonthHistoryAdapter get() {
        return newInstance();
    }

    public static WodMonthHistoryAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static WodMonthHistoryAdapter newInstance() {
        return new WodMonthHistoryAdapter();
    }

    private static final class InstanceHolder {
        static final WodMonthHistoryAdapter_Factory INSTANCE = new WodMonthHistoryAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
