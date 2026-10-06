package fast.dic.dict.helpers;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class FDSoundEffect_Factory implements Factory<FDSoundEffect> {
    private final Provider<Context> contextProvider;

    private FDSoundEffect_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDSoundEffect get() {
        return newInstance(this.contextProvider.get());
    }

    public static FDSoundEffect_Factory create(Provider<Context> provider) {
        return new FDSoundEffect_Factory(provider);
    }

    public static FDSoundEffect newInstance(Context context) {
        return new FDSoundEffect(context);
    }
}
