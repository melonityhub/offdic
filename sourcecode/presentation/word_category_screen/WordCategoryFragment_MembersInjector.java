package fast.dic.dict.presentation.word_category_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class WordCategoryFragment_MembersInjector implements MembersInjector<WordCategoryFragment> {
    private final Provider<WordCategoryAdapter> adapterProvider;

    private WordCategoryFragment_MembersInjector(Provider<WordCategoryAdapter> provider) {
        this.adapterProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WordCategoryFragment wordCategoryFragment) {
        injectAdapter(wordCategoryFragment, this.adapterProvider.get());
    }

    public static MembersInjector<WordCategoryFragment> create(Provider<WordCategoryAdapter> provider) {
        return new WordCategoryFragment_MembersInjector(provider);
    }

    public static void injectAdapter(WordCategoryFragment wordCategoryFragment, WordCategoryAdapter wordCategoryAdapter) {
        wordCategoryFragment.adapter = wordCategoryAdapter;
    }
}
