package fast.dic.dict.presentation.profile_screen;

import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentViewModelLazy.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class ProfileFragment$special$$inlined$viewModels$default$10 implements Function0<ViewModelProvider.Factory> {
    final /* synthetic */ Lazy $owner$delegate;

    public ProfileFragment$special$$inlined$viewModels$default$10() {
        lazy2 = lazy;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ViewModelProvider.Factory invoke() {
        ViewModelProvider.Factory factory;
        ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
        if (hasDefaultViewModelProviderFactory != null && (factory = hasDefaultViewModelProviderFactory.get$defaultFactory()) != null) {
            return factory;
        }
        ViewModelProvider.Factory factory2 = profileFragment.get$defaultFactory();
        Intrinsics.checkNotNullExpressionValue(factory2, "<get-defaultViewModelProviderFactory>(...)");
        return factory2;
    }
}
