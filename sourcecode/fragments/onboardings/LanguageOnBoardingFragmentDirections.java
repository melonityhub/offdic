package fast.dic.dict.fragments.onboardings;

import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: LanguageOnBoardingFragmentDirections.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragmentDirections;", "", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LanguageOnBoardingFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: LanguageOnBoardingFragmentDirections.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\u00020\u0005H\u0007b\u0002\b\u0006J\f\u0010\u0007\u001a\u00020\u0005H\u0007b\u0002\b\u0006¨\u0006\b"}, d2 = {"Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragmentDirections$Companion;", "", "<init>", "()V", "actionLanguageOnBoardingFragmentToPushNotificationOnBoardingFragment", "Landroidx/navigation/NavDirections;", "Landroidx/annotation/CheckResult;", "actionLanguageOnBoardingFragmentToAdvertisementOnBoardingFragment", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final NavDirections actionLanguageOnBoardingFragmentToPushNotificationOnBoardingFragment() {
            return new ActionOnlyNavDirections(R.id.action_languageOnBoardingFragment_to_pushNotificationOnBoardingFragment);
        }

        public final NavDirections actionLanguageOnBoardingFragmentToAdvertisementOnBoardingFragment() {
            return new ActionOnlyNavDirections(R.id.action_languageOnBoardingFragment_to_advertisementOnBoardingFragment);
        }
    }

    private LanguageOnBoardingFragmentDirections() {
    }
}
