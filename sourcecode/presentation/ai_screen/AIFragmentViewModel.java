package fast.dic.dict.presentation.ai_screen;

import android.os.Bundle;
import androidx.lifecycle.ViewModel;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.models.PlanType;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AIFragmentViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010Ê\u0001\u0002\b\u0016¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;", "Landroidx/lifecycle/ViewModel;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "webViewState", "Landroid/os/Bundle;", "getWebViewState", "()Landroid/os/Bundle;", "planType", "Lfast/dic/dict/models/PlanType;", "getPlanType", "()Lfast/dic/dict/models/PlanType;", "setPlanType", "(Lfast/dic/dict/models/PlanType;)V", "getOfflineSpeed", "", "validRewardedAdsForAiTranslator", "", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class AIFragmentViewModel extends ViewModel {
    private final LocalStorage localStorage;
    private PlanType planType;
    private final Bundle webViewState;

    @Inject
    public AIFragmentViewModel(LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.localStorage = localStorage;
        this.webViewState = new Bundle();
    }

    public final Bundle getWebViewState() {
        return this.webViewState;
    }

    public final PlanType getPlanType() {
        return this.planType;
    }

    public final void setPlanType(PlanType planType) {
        this.planType = planType;
    }

    public final float getOfflineSpeed() {
        return this.localStorage.getOfflineSpeechSpeed() * 0.5f;
    }

    public final boolean validRewardedAdsForAiTranslator() {
        return this.localStorage.validRewardedAdsForAiTranslator();
    }
}
