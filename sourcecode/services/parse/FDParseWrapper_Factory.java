package fast.dic.dict.services.parse;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;

/* JADX INFO: loaded from: classes11.dex */
public final class FDParseWrapper_Factory implements Factory<FDParseWrapper> {
    private final Provider<Context> contextProvider;
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;

    private FDParseWrapper_Factory(Provider<Context> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        this.contextProvider = provider;
        this.firebaseUserPropertiesManagerProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDParseWrapper get() {
        return newInstance(this.contextProvider.get(), this.firebaseUserPropertiesManagerProvider.get());
    }

    public static FDParseWrapper_Factory create(Provider<Context> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        return new FDParseWrapper_Factory(provider, provider2);
    }

    public static FDParseWrapper newInstance(Context context, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        return new FDParseWrapper(context, firebaseUserPropertiesManager);
    }
}
