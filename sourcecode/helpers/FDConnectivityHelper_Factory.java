package fast.dic.dict.helpers;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class FDConnectivityHelper_Factory implements Factory<FDConnectivityHelper> {
    private final Provider<Context> contextProvider;

    private FDConnectivityHelper_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDConnectivityHelper get() {
        return newInstance(this.contextProvider.get());
    }

    public static FDConnectivityHelper_Factory create(Provider<Context> provider) {
        return new FDConnectivityHelper_Factory(provider);
    }

    public static FDConnectivityHelper newInstance(Context context) {
        return new FDConnectivityHelper(context);
    }
}
