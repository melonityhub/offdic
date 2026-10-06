package fast.dic.dict.viewmodels;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class BazaarPaymentViewModel_HiltModules {
    private BazaarPaymentViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(BazaarPaymentViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(BazaarPaymentViewModel bazaarPaymentViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(BazaarPaymentViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
