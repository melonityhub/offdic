package fast.dic.dict.presentation.select_folder_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class SelectFavoriteFolderModal_MembersInjector implements MembersInjector<SelectFavoriteFolderModal> {
    private final Provider<SelectFavoriteFoldersAdapter> adapterProvider;

    private SelectFavoriteFolderModal_MembersInjector(Provider<SelectFavoriteFoldersAdapter> provider) {
        this.adapterProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SelectFavoriteFolderModal selectFavoriteFolderModal) {
        injectAdapter(selectFavoriteFolderModal, this.adapterProvider.get());
    }

    public static MembersInjector<SelectFavoriteFolderModal> create(Provider<SelectFavoriteFoldersAdapter> provider) {
        return new SelectFavoriteFolderModal_MembersInjector(provider);
    }

    public static void injectAdapter(SelectFavoriteFolderModal selectFavoriteFolderModal, SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter) {
        selectFavoriteFolderModal.adapter = selectFavoriteFoldersAdapter;
    }
}
