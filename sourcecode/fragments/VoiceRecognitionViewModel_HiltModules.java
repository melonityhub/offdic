package fast.dic.dict.fragments;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class VoiceRecognitionViewModel_HiltModules {
    private VoiceRecognitionViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(VoiceRecognitionViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(VoiceRecognitionViewModel voiceRecognitionViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(VoiceRecognitionViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
