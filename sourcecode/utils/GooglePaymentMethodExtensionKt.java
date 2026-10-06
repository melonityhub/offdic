package fast.dic.dict.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import fast.dic.dict.PaymentMethodFragment;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PaymentMethod;
import fast.dic.dict.adapters.SubscriptionIAPPlatformEnum;
import fast.dic.dict.domain.billing.PurchaseListingDetails;
import fast.dic.dict.domain.billing.PurchasedItem;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel;
import fast.dic.dict.views.CustomProgressbar;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GooglePaymentMethodExtension.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a \u0010\u0004\u001a\u00020\u0005*\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"purchaseFromGooglePlay", "", "Lfast/dic/dict/PaymentMethodFragment;", "restorePurchaseFromGooglePlay", "getGooglePlayPaymentMethod", "Lfast/dic/dict/adapters/PaymentMethod;", "products", "", "Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "planType", "Lfast/dic/dict/models/PlanType;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class GooglePaymentMethodExtensionKt {
    public static final void purchaseFromGooglePlay(PaymentMethodFragment paymentMethodFragment) {
        Intrinsics.checkNotNullParameter(paymentMethodFragment, "<this>");
        if (!paymentMethodFragment.getGoogleViewModel().isIabServiceAvailable()) {
            paymentMethodFragment.getPaymentConnectionFailedListener().invoke("Google play is unavailable");
            paymentMethodFragment.dismiss();
            return;
        }
        String productId = paymentMethodFragment.getProductId();
        GooglePaymentViewModel googleViewModel = paymentMethodFragment.getGoogleViewModel();
        FragmentActivity fragmentActivityRequireActivity = paymentMethodFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        if (googleViewModel.purchaseFromGooglePlay(productId, fragmentActivityRequireActivity)) {
            return;
        }
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        FragmentActivity fragmentActivityRequireActivity2 = paymentMethodFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity2, "requireActivity(...)");
        fDAlertManger.showCouldNotPurchaseAlert(fragmentActivityRequireActivity2);
        paymentMethodFragment.getPaymentFailedListener().invoke("Google play purchased failed");
        paymentMethodFragment.dismiss();
    }

    public static final void restorePurchaseFromGooglePlay(final PaymentMethodFragment paymentMethodFragment) {
        Intrinsics.checkNotNullParameter(paymentMethodFragment, "<this>");
        CustomProgressbar loadingSpinner = paymentMethodFragment.getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        if (!paymentMethodFragment.getGoogleViewModel().isIabServiceAvailable()) {
            paymentMethodFragment.getPaymentConnectionFailedListener().invoke("Google play is unavailable");
            paymentMethodFragment.dismiss();
        } else {
            paymentMethodFragment.getGoogleViewModel().restorePurchaseFromGooglePlay(paymentMethodFragment.getProductId(), new Function1() { // from class: fast.dic.dict.utils.GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GooglePaymentMethodExtensionKt.restorePurchaseFromGooglePlay$lambda$0(paymentMethodFragment, (PurchasedItem) obj);
                }
            });
        }
    }

    static final Unit restorePurchaseFromGooglePlay$lambda$0(PaymentMethodFragment paymentMethodFragment, PurchasedItem purchasedItem) {
        if (purchasedItem == null) {
            try {
                CustomProgressbar loadingSpinner = paymentMethodFragment.getBinding().loadingSpinner;
                Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
                ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
                FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
                Context contextRequireContext = paymentMethodFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                fDAlertManger.showNeverPurchasedAlert(contextRequireContext);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return Unit.INSTANCE;
        }
        CustomProgressbar loadingSpinner2 = paymentMethodFragment.getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
        ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
        paymentMethodFragment.getSendPurchaseTokenToServerListener().invoke(purchasedItem.getPurchaseToken(), purchasedItem.getProductId(), paymentMethodFragment.getArgs().getPlanType(), SubscriptionIAPPlatformEnum.GooglePlay);
        return Unit.INSTANCE;
    }

    public static final PaymentMethod getGooglePlayPaymentMethod(PaymentMethodFragment paymentMethodFragment, List<PurchaseListingDetails> products, PlanType planType) {
        String formattedPrice;
        String string;
        Intrinsics.checkNotNullParameter(paymentMethodFragment, "<this>");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(planType, "planType");
        PlanType planType2 = paymentMethodFragment.getArgs().getPlanType();
        PurchaseListingDetails purchaseListingDetails = (PurchaseListingDetails) CollectionsKt.firstOrNull((List) products);
        if (purchaseListingDetails == null || (formattedPrice = purchaseListingDetails.getFormattedPrice()) == null) {
            formattedPrice = "---";
        }
        String str = formattedPrice;
        if (planType == PlanType.REMOVE_ADS) {
            string = paymentMethodFragment.getString(R.string.restore_from_google_play);
        } else {
            string = paymentMethodFragment.getString(R.string.purchase_from_google_play);
        }
        String str2 = string;
        Intrinsics.checkNotNull(str2);
        Drawable drawable = ContextCompat.getDrawable(paymentMethodFragment.requireContext(), R.drawable.ic_google_play);
        Intrinsics.checkNotNull(drawable);
        PaymentMethod paymentMethod = new PaymentMethod(planType2, str, str2, drawable, SubscriptionIAPPlatformEnum.GooglePlay, true);
        paymentMethodFragment.setSelectedPaymentMethod$app(SubscriptionIAPPlatformEnum.GooglePlay);
        return paymentMethod;
    }
}
