package fast.dic.dict.database;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class LocalStorage_Factory implements Factory<LocalStorage> {
    private final Provider<Context> contextProvider;

    private LocalStorage_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public LocalStorage get() {
        return newInstance(this.contextProvider.get());
    }

    public static LocalStorage_Factory create(Provider<Context> provider) {
        return new LocalStorage_Factory(provider);
    }

    public static LocalStorage newInstance(Context context) {
        return new LocalStorage(context);
    }
}
