package fast.dic.dict.helpers.database;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class FDResultLabel_Factory implements Factory<FDResultLabel> {
    private final Provider<Context> contextProvider;

    private FDResultLabel_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDResultLabel get() {
        return newInstance(this.contextProvider.get());
    }

    public static FDResultLabel_Factory create(Provider<Context> provider) {
        return new FDResultLabel_Factory(provider);
    }

    public static FDResultLabel newInstance(Context context) {
        return new FDResultLabel(context);
    }
}
