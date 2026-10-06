package fast.dic.dict.fragments;

import android.app.Application;
import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class VoiceRecognitionViewModel_Factory implements Factory<VoiceRecognitionViewModel> {
    private final Provider<Application> applicationProvider;

    private VoiceRecognitionViewModel_Factory(Provider<Application> provider) {
        this.applicationProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public VoiceRecognitionViewModel get() {
        return newInstance(this.applicationProvider.get());
    }

    public static VoiceRecognitionViewModel_Factory create(Provider<Application> provider) {
        return new VoiceRecognitionViewModel_Factory(provider);
    }

    public static VoiceRecognitionViewModel newInstance(Application application) {
        return new VoiceRecognitionViewModel(application);
    }
}
