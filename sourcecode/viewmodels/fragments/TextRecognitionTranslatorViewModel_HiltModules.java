package fast.dic.dict.viewmodels.fragments;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class TextRecognitionTranslatorViewModel_HiltModules {
    private TextRecognitionTranslatorViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(TextRecognitionTranslatorViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(TextRecognitionTranslatorViewModel textRecognitionTranslatorViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(TextRecognitionTranslatorViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
