package fast.dic.dict.presentation.sort_screen;

import androidx.lifecycle.ViewModel;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.domain.entity.WordSortEnum;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SortDialogViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nÊ\u0001\u0002\b\u000f¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;", "Landroidx/lifecycle/ViewModel;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "selectedSort", "Lfast/dic/dict/domain/entity/WordSortEnum;", "getSelectedSort", "()Lfast/dic/dict/domain/entity/WordSortEnum;", "updateSelectedSort", "", "sort", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SortDialogViewModel extends ViewModel {
    private final LocalStorage localStorage;
    private final WordSortEnum selectedSort;

    @Inject
    public SortDialogViewModel(LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.localStorage = localStorage;
        this.selectedSort = localStorage.getSelectedSort();
    }

    public final WordSortEnum getSelectedSort() {
        return this.selectedSort;
    }

    public final void updateSelectedSort(WordSortEnum sort) {
        Intrinsics.checkNotNullParameter(sort, "sort");
        this.localStorage.setSelectedSort(sort);
    }
}
