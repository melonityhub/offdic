package fast.dic.dict.presentation.registration_form_screen;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class RegistrationFormViewModel_HiltModules {
    private RegistrationFormViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(RegistrationFormViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(RegistrationFormViewModel registrationFormViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(RegistrationFormViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
