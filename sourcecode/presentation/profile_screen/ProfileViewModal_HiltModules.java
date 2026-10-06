package fast.dic.dict.presentation.profile_screen;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class ProfileViewModal_HiltModules {
    private ProfileViewModal_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(ProfileViewModal.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(ProfileViewModal profileViewModal);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(ProfileViewModal.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
