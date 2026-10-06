package fast.dic.dict.viewmodels.fragments;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class GooglePaymentViewModel_HiltModules {
    private GooglePaymentViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(GooglePaymentViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(GooglePaymentViewModel googlePaymentViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(GooglePaymentViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
