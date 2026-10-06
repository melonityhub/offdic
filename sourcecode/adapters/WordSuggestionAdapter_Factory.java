package fast.dic.dict.adapters;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class WordSuggestionAdapter_Factory implements Factory<WordSuggestionAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WordSuggestionAdapter get() {
        return newInstance();
    }

    public static WordSuggestionAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static WordSuggestionAdapter newInstance() {
        return new WordSuggestionAdapter();
    }

    private static final class InstanceHolder {
        static final WordSuggestionAdapter_Factory INSTANCE = new WordSuggestionAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
