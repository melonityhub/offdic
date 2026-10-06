package fast.dic.dict.presentation.favorite_folders_screen;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class DirectoryWordsViewModel_HiltModules {
    private DirectoryWordsViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(DirectoryWordsViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(DirectoryWordsViewModel directoryWordsViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(DirectoryWordsViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
