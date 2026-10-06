package fast.dic.dict.presentation.word_category_screen;

import androidx.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;
import dagger.multibindings.LazyClassKey;

/* JADX INFO: loaded from: classes11.dex */
public final class WordCategoryViewModel_HiltModules {
    private WordCategoryViewModel_HiltModules() {
    }

    @Module
    public static abstract class BindsModule {
        @LazyClassKey(WordCategoryViewModel.class)
        @Binds
        @IntoMap
        public abstract ViewModel binds(WordCategoryViewModel wordCategoryViewModel);

        private BindsModule() {
        }
    }

    @Module
    public static final class KeyModule {
        @Provides
        @LazyClassKey(WordCategoryViewModel.class)
        @IntoMap
        public static boolean provide() {
            return true;
        }

        private KeyModule() {
        }
    }
}
