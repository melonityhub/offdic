package fast.dic.dict.presentation.result_order_modal;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class ResultOrderModalViewModel_HiltModules {
    private ResultOrderModalViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(ResultOrderModalViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(ResultOrderModalViewModel resultOrderModalViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(ResultOrderModalViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
