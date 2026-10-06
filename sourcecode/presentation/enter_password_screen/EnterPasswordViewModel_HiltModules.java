package fast.dic.dict.presentation.enter_password_screen;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class EnterPasswordViewModel_HiltModules {
    private EnterPasswordViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(EnterPasswordViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(EnterPasswordViewModel enterPasswordViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(EnterPasswordViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
