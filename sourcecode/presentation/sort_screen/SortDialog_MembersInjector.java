package fast.dic.dict.presentation.sort_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class SortDialog_MembersInjector implements MembersInjector<SortDialog> {
    private final Provider<SortDialogAdapter> adapterProvider;

    private SortDialog_MembersInjector(Provider<SortDialogAdapter> provider) {
        this.adapterProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SortDialog sortDialog) {
        injectAdapter(sortDialog, this.adapterProvider.get());
    }

    public static MembersInjector<SortDialog> create(Provider<SortDialogAdapter> provider) {
        return new SortDialog_MembersInjector(provider);
    }

    public static void injectAdapter(SortDialog sortDialog, SortDialogAdapter sortDialogAdapter) {
        sortDialog.adapter = sortDialogAdapter;
    }
}
