package fast.dic.dict.presentation.forget_password_screen;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class ForgetPasswordViewModel_HiltModules {
    private ForgetPasswordViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(ForgetPasswordViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(ForgetPasswordViewModel forgetPasswordViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(ForgetPasswordViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
