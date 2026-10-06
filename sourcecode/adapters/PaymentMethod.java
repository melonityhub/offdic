package fast.dic.dict.adapters;

import android.graphics.drawable.Drawable;
import fast.dic.dict.models.PlanType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\bHÆ\u0003J\t\u0010 \u001a\u00020\nHÆ\u0003J\t\u0010!\u001a\u00020\fHÆ\u0003JE\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0014\u0010#\u001a\u00020\f2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010%\u001a\u00020&HÖ\u0081\u0004J\n\u0010'\u001a\u00020\u0005HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006("}, d2 = {"Lfast/dic/dict/adapters/PaymentMethod;", "", "planType", "Lfast/dic/dict/models/PlanType;", "price", "", "platformDescription", "logo", "Landroid/graphics/drawable/Drawable;", "paymentMethod", "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;", "selected", "", "<init>", "(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)V", "getPlanType", "()Lfast/dic/dict/models/PlanType;", "getPrice", "()Ljava/lang/String;", "getPlatformDescription", "getLogo", "()Landroid/graphics/drawable/Drawable;", "getPaymentMethod", "()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;", "getSelected", "()Z", "setSelected", "(Z)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PaymentMethod {
    private final Drawable logo;
    private final SubscriptionIAPPlatformEnum paymentMethod;
    private final PlanType planType;
    private final String platformDescription;
    private final String price;
    private boolean selected;

    public static /* synthetic */ PaymentMethod copy$default(PaymentMethod paymentMethod, PlanType planType, String str, String str2, Drawable drawable, SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            planType = paymentMethod.planType;
        }
        if ((i & 2) != 0) {
            str = paymentMethod.price;
        }
        if ((i & 4) != 0) {
            str2 = paymentMethod.platformDescription;
        }
        if ((i & 8) != 0) {
            drawable = paymentMethod.logo;
        }
        if ((i & 16) != 0) {
            subscriptionIAPPlatformEnum = paymentMethod.paymentMethod;
        }
        if ((i & 32) != 0) {
            z = paymentMethod.selected;
        }
        SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum2 = subscriptionIAPPlatformEnum;
        boolean z2 = z;
        return paymentMethod.copy(planType, str, str2, drawable, subscriptionIAPPlatformEnum2, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PlanType getPlanType() {
        return this.planType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPlatformDescription() {
        return this.platformDescription;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Drawable getLogo() {
        return this.logo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final SubscriptionIAPPlatformEnum getPaymentMethod() {
        return this.paymentMethod;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getSelected() {
        return this.selected;
    }

    public final PaymentMethod copy(PlanType planType, String price, String platformDescription, Drawable logo, SubscriptionIAPPlatformEnum paymentMethod, boolean selected) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(platformDescription, "platformDescription");
        Intrinsics.checkNotNullParameter(logo, "logo");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        return new PaymentMethod(planType, price, platformDescription, logo, paymentMethod, selected);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentMethod)) {
            return false;
        }
        PaymentMethod paymentMethod = (PaymentMethod) other;
        return this.planType == paymentMethod.planType && Intrinsics.areEqual(this.price, paymentMethod.price) && Intrinsics.areEqual(this.platformDescription, paymentMethod.platformDescription) && Intrinsics.areEqual(this.logo, paymentMethod.logo) && this.paymentMethod == paymentMethod.paymentMethod && this.selected == paymentMethod.selected;
    }

    public int hashCode() {
        return (((((((((this.planType.hashCode() * 31) + this.price.hashCode()) * 31) + this.platformDescription.hashCode()) * 31) + this.logo.hashCode()) * 31) + this.paymentMethod.hashCode()) * 31) + Boolean.hashCode(this.selected);
    }

    public String toString() {
        return "PaymentMethod(planType=" + this.planType + ", price=" + this.price + ", platformDescription=" + this.platformDescription + ", logo=" + this.logo + ", paymentMethod=" + this.paymentMethod + ", selected=" + this.selected + ")";
    }

    public PaymentMethod(PlanType planType, String price, String platformDescription, Drawable logo, SubscriptionIAPPlatformEnum paymentMethod, boolean z) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(platformDescription, "platformDescription");
        Intrinsics.checkNotNullParameter(logo, "logo");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        this.planType = planType;
        this.price = price;
        this.platformDescription = platformDescription;
        this.logo = logo;
        this.paymentMethod = paymentMethod;
        this.selected = z;
    }

    public /* synthetic */ PaymentMethod(PlanType planType, String str, String str2, Drawable drawable, SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(planType, str, str2, drawable, subscriptionIAPPlatformEnum, (i & 32) != 0 ? false : z);
    }

    public final PlanType getPlanType() {
        return this.planType;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getPlatformDescription() {
        return this.platformDescription;
    }

    public final Drawable getLogo() {
        return this.logo;
    }

    public final SubscriptionIAPPlatformEnum getPaymentMethod() {
        return this.paymentMethod;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public final void setSelected(boolean z) {
        this.selected = z;
    }
}
