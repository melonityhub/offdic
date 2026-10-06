package fast.dic.dict.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry;
import androidx.core.content.ContextCompat;
import com.google.mlkit.nl.translate.TranslateLanguage;
import fast.dic.dict.PaymentMethodFragment;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PaymentMethod;
import fast.dic.dict.adapters.PaymentMethodAdapter;
import fast.dic.dict.adapters.SubscriptionIAPPlatformEnum;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.viewmodels.BazaarPaymentMethodState;
import fast.dic.dict.viewmodels.BazaarPaymentViewModel;
import fast.dic.dict.viewmodels.BazaarPurchaseState;
import fast.dic.dict.views.CustomProgressbar;
import ir.cafebazaar.poolakey.entity.SkuDetails;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BazaarPaymentMethodExtension.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0002¨\u0006\n"}, d2 = {"getProductFromBazaar", "", "Lfast/dic/dict/PaymentMethodFragment;", "getBazaarPaymentMethod", "Lfast/dic/dict/adapters/PaymentMethod;", TranslateLanguage.ITALIAN, "Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;", "planType", "Lfast/dic/dict/models/PlanType;", "purchaseFromBazaar", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class BazaarPaymentMethodExtensionKt {
    public static final void getProductFromBazaar(final PaymentMethodFragment paymentMethodFragment) {
        Intrinsics.checkNotNullParameter(paymentMethodFragment, "<this>");
        if (BuildConfigExtKt.isBazaar()) {
            BazaarPaymentViewModel bazaarViewModel$app = paymentMethodFragment.getBazaarViewModel$app();
            Context contextRequireContext = paymentMethodFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            bazaarViewModel$app.initializeCafeBazaarBillingService(contextRequireContext).observe(paymentMethodFragment.getViewLifecycleOwner(), new BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.utils.BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BazaarPaymentMethodExtensionKt.getProductFromBazaar$lambda$0(paymentMethodFragment, (Boolean) obj);
                }
            }));
        }
    }

    static final Unit getProductFromBazaar$lambda$0(final PaymentMethodFragment paymentMethodFragment, Boolean bool) {
        if (!bool.booleanValue()) {
            return Unit.INSTANCE;
        }
        paymentMethodFragment.getBazaarViewModel$app().getBazaarProducts(CollectionsKt.listOf(paymentMethodFragment.getProductId())).observe(paymentMethodFragment.getViewLifecycleOwner(), new BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.utils.BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BazaarPaymentMethodExtensionKt.getProductFromBazaar$lambda$0$0(paymentMethodFragment, (BazaarPaymentMethodState) obj);
            }
        }));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getProductFromBazaar$lambda$0$0(PaymentMethodFragment paymentMethodFragment, BazaarPaymentMethodState bazaarPaymentMethodState) {
        if (bazaarPaymentMethodState instanceof BazaarPaymentMethodState.Products) {
            CustomProgressbar loadingSpinner = paymentMethodFragment.getBinding().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
            PaymentMethodAdapter dataAdapter = paymentMethodFragment.getBinding().getDataAdapter();
            if (dataAdapter != null) {
                dataAdapter.submitList(CollectionsKt.listOf(getBazaarPaymentMethod(paymentMethodFragment, (BazaarPaymentMethodState.Products) bazaarPaymentMethodState, paymentMethodFragment.getArgs().getPlanType())));
            }
        } else {
            if (!(bazaarPaymentMethodState instanceof BazaarPaymentMethodState.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            CustomProgressbar loadingSpinner2 = paymentMethodFragment.getBinding().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
        }
        return Unit.INSTANCE;
    }

    public static final PaymentMethod getBazaarPaymentMethod(PaymentMethodFragment paymentMethodFragment, BazaarPaymentMethodState.Products it, PlanType planType) {
        String price;
        String string;
        Intrinsics.checkNotNullParameter(paymentMethodFragment, "<this>");
        Intrinsics.checkNotNullParameter(it, "it");
        Intrinsics.checkNotNullParameter(planType, "planType");
        PlanType planType2 = paymentMethodFragment.getArgs().getPlanType();
        SkuDetails skuDetails = (SkuDetails) CollectionsKt.firstOrNull((List) it.getProducts());
        if (skuDetails == null || (price = skuDetails.getPrice()) == null) {
            price = "---";
        }
        String str = price;
        if (planType == PlanType.REMOVE_ADS) {
            string = paymentMethodFragment.getString(R.string.restore_from_bazaar);
        } else {
            string = paymentMethodFragment.getString(R.string.purchase_from_bazaar);
        }
        String str2 = string;
        Intrinsics.checkNotNull(str2);
        Drawable drawable = ContextCompat.getDrawable(paymentMethodFragment.requireContext(), R.drawable.ic_cafe_bazaar);
        Intrinsics.checkNotNull(drawable);
        PaymentMethod paymentMethod = new PaymentMethod(planType2, str, str2, drawable, SubscriptionIAPPlatformEnum.CafeBazaar, true);
        paymentMethodFragment.setSelectedPaymentMethod$app(SubscriptionIAPPlatformEnum.CafeBazaar);
        return paymentMethod;
    }

    public static final void purchaseFromBazaar(final PaymentMethodFragment paymentMethodFragment) {
        Intrinsics.checkNotNullParameter(paymentMethodFragment, "<this>");
        if (BuildConfigExtKt.isBazaar()) {
            TextView toolbarTitle = paymentMethodFragment.getBinding().toolbarTitle;
            Intrinsics.checkNotNullExpressionValue(toolbarTitle, "toolbarTitle");
            ViewExtKt.hideMe$default(toolbarTitle, 0L, 1, null);
            BazaarPaymentViewModel bazaarViewModel$app = paymentMethodFragment.getBazaarViewModel$app();
            Context contextRequireContext = paymentMethodFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            bazaarViewModel$app.initializeCafeBazaarBillingService(contextRequireContext).observe(paymentMethodFragment.getViewLifecycleOwner(), new BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.utils.BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BazaarPaymentMethodExtensionKt.purchaseFromBazaar$lambda$0(paymentMethodFragment, (Boolean) obj);
                }
            }));
        }
    }

    static final Unit purchaseFromBazaar$lambda$0(final PaymentMethodFragment paymentMethodFragment, Boolean bool) {
        if (!bool.booleanValue()) {
            paymentMethodFragment.dismiss();
            return Unit.INSTANCE;
        }
        String productId = paymentMethodFragment.getProductId();
        BazaarPaymentViewModel bazaarViewModel$app = paymentMethodFragment.getBazaarViewModel$app();
        ActivityResultRegistry activityResultRegistry = paymentMethodFragment.requireActivity().getActivityResultRegistry();
        Intrinsics.checkNotNullExpressionValue(activityResultRegistry, "<get-activityResultRegistry>(...)");
        bazaarViewModel$app.purchasePackageFromCafeBazaar(productId, activityResultRegistry).observe(paymentMethodFragment.getViewLifecycleOwner(), new BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.utils.BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BazaarPaymentMethodExtensionKt.purchaseFromBazaar$lambda$0$0(paymentMethodFragment, (BazaarPurchaseState) obj);
            }
        }));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit purchaseFromBazaar$lambda$0$0(PaymentMethodFragment paymentMethodFragment, BazaarPurchaseState bazaarPurchaseState) {
        if (bazaarPurchaseState instanceof BazaarPurchaseState.Purchased) {
            CustomProgressbar loadingSpinner = paymentMethodFragment.getBinding().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
            BazaarPurchaseState.Purchased purchased = (BazaarPurchaseState.Purchased) bazaarPurchaseState;
            paymentMethodFragment.getSendPurchaseTokenToServerListener().invoke(purchased.getPurchaseToken(), purchased.getProductId(), paymentMethodFragment.getArgs().getPlanType(), SubscriptionIAPPlatformEnum.CafeBazaar);
        } else {
            if (!(bazaarPurchaseState instanceof BazaarPurchaseState.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            CustomProgressbar loadingSpinner2 = paymentMethodFragment.getBinding().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            paymentMethodFragment.getPaymentFailedListener().invoke(((BazaarPurchaseState.Error) bazaarPurchaseState).getMessage());
            paymentMethodFragment.dismiss();
        }
        return Unit.INSTANCE;
    }
}
