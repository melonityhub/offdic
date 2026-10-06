package fast.dic.dict.presentation.ai_screen;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class AIFragmentViewModel_HiltModules {
    private AIFragmentViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(AIFragmentViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(AIFragmentViewModel aIFragmentViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(AIFragmentViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
