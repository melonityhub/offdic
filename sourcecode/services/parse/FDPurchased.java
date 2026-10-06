package fast.dic.dict.services.parse;

import android.content.Context;
import android.content.pm.PackageManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.analytics.FirebaseSegmentUser;
import fast.dic.dict.utils.Util;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDPurchased.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\tJ\u0006\u0010\u0010\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\tJ\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\u000bJ\u0006\u0010\u0014\u001a\u00020\u000bJ\u0006\u0010\u0015\u001a\u00020\u000bJ\u0010\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lfast/dic/dict/services/parse/FDPurchased;", "", "mContext", "Landroid/content/Context;", "mAndroidId", "", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "PurchasedIAP", "", "IsPurchasedIAP", "", "PurchasedPlan1", "RemovePurchasedPlan1", "IsPurchasedPlan1", "PurchasedPlan2", "PurchasedPlan3", "RemovePurchasedPlan2", "RemovePurchasedPlan3", "IsPurchasedPlan2", "IsPurchasedPlan3", "IsPreviouslyPurchased", "ValidateUserPurchase", "fdParseUser", "Lfast/dic/dict/services/parse/FDParseUser;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDPurchased {
    private final String mAndroidId;
    private final Context mContext;

    public FDPurchased(Context mContext, String str) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
        this.mAndroidId = str;
    }

    public final void PurchasedIAP() {
        try {
            new LocalStorage(this.mContext).storeIAP(Util.INSTANCE.getEncryptedAndroidId(this.mContext));
        } catch (Exception unused) {
        }
    }

    public final boolean IsPurchasedIAP() throws PackageManager.NameNotFoundException {
        String str;
        String iap = new LocalStorage(this.mContext).getIAP();
        if (iap != null) {
            String str2 = iap;
            if (str2.length() != 0 && (str = this.mAndroidId) != null && str.length() != 0) {
                String encryptedAndroidId = Util.INSTANCE.getEncryptedAndroidId(this.mContext);
                int length = encryptedAndroidId.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = encryptedAndroidId.charAt(!z ? i : length) <= ' ';
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i++;
                    } else {
                        z = true;
                    }
                }
                String string = encryptedAndroidId.subSequence(i, length + 1).toString();
                int length2 = str2.length() - 1;
                int i2 = 0;
                boolean z3 = false;
                while (i2 <= length2) {
                    boolean z4 = str2.charAt(!z3 ? i2 : length2) <= ' ';
                    if (z3) {
                        if (!z4) {
                            break;
                        }
                        length2--;
                    } else if (z4) {
                        i2++;
                    } else {
                        z3 = true;
                    }
                }
                return Intrinsics.areEqual(string, str2.subSequence(i2, length2 + 1).toString());
            }
        }
        return false;
    }

    public final void PurchasedPlan1() {
        try {
            new LocalStorage(this.mContext).storeIAPPlan1(Util.INSTANCE.getEncryptedAndroidId(this.mContext));
            FirebaseSegmentUser.INSTANCE.addAttribute("isPurchased");
            FirebaseSegmentUser.INSTANCE.removeAttribute("notPurchased");
        } catch (Exception unused) {
        }
    }

    public final void RemovePurchasedPlan1() {
        try {
            new LocalStorage(this.mContext).removeIAPPlan1();
            FirebaseSegmentUser.INSTANCE.addAttribute("notPurchased");
            FirebaseSegmentUser.INSTANCE.removeAttribute("isPurchased");
        } catch (Exception unused) {
        }
    }

    public final boolean IsPurchasedPlan1() throws PackageManager.NameNotFoundException {
        String str;
        String iAPPlan1 = new LocalStorage(this.mContext).getIAPPlan1();
        if (iAPPlan1 != null) {
            String str2 = iAPPlan1;
            if (str2.length() != 0 && (str = this.mAndroidId) != null && str.length() != 0) {
                String encryptedAndroidId = Util.INSTANCE.getEncryptedAndroidId(this.mContext);
                int length = encryptedAndroidId.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = encryptedAndroidId.charAt(!z ? i : length) <= ' ';
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i++;
                    } else {
                        z = true;
                    }
                }
                String string = encryptedAndroidId.subSequence(i, length + 1).toString();
                int length2 = str2.length() - 1;
                int i2 = 0;
                boolean z3 = false;
                while (i2 <= length2) {
                    boolean z4 = str2.charAt(!z3 ? i2 : length2) <= ' ';
                    if (z3) {
                        if (!z4) {
                            break;
                        }
                        length2--;
                    } else if (z4) {
                        i2++;
                    } else {
                        z3 = true;
                    }
                }
                return Intrinsics.areEqual(string, str2.subSequence(i2, length2 + 1).toString());
            }
        }
        return false;
    }

    public final void PurchasedPlan2() {
        try {
            new LocalStorage(this.mContext).storeIAPPlan2(Util.INSTANCE.getEncryptedAndroidId(this.mContext));
            FirebaseSegmentUser.INSTANCE.addAttribute("isPurchased");
            FirebaseSegmentUser.INSTANCE.removeAttribute("notPurchased");
        } catch (Exception unused) {
        }
    }

    public final void PurchasedPlan3() {
        try {
            new LocalStorage(this.mContext).storeIAPPlan3(Util.INSTANCE.getEncryptedAndroidId(this.mContext));
            FirebaseSegmentUser.INSTANCE.addAttribute("isPurchased");
            FirebaseSegmentUser.INSTANCE.removeAttribute("notPurchased");
        } catch (Exception unused) {
        }
    }

    public final void RemovePurchasedPlan2() {
        new LocalStorage(this.mContext).removeIAPPlan2();
        FirebaseSegmentUser.INSTANCE.addAttribute("notPurchased");
        FirebaseSegmentUser.INSTANCE.removeAttribute("isPurchased");
    }

    public final void RemovePurchasedPlan3() {
        new LocalStorage(this.mContext).removeIAPPlan3();
        FirebaseSegmentUser.INSTANCE.addAttribute("notPurchased");
        FirebaseSegmentUser.INSTANCE.removeAttribute("isPurchased");
    }

    public final boolean IsPurchasedPlan2() throws PackageManager.NameNotFoundException {
        String str;
        String iAPPlan2 = new LocalStorage(this.mContext).getIAPPlan2();
        if (iAPPlan2 != null) {
            String str2 = iAPPlan2;
            if (str2.length() != 0 && (str = this.mAndroidId) != null && str.length() != 0) {
                String encryptedAndroidId = Util.INSTANCE.getEncryptedAndroidId(this.mContext);
                int length = encryptedAndroidId.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = encryptedAndroidId.charAt(!z ? i : length) <= ' ';
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i++;
                    } else {
                        z = true;
                    }
                }
                String string = encryptedAndroidId.subSequence(i, length + 1).toString();
                int length2 = str2.length() - 1;
                int i2 = 0;
                boolean z3 = false;
                while (i2 <= length2) {
                    boolean z4 = str2.charAt(!z3 ? i2 : length2) <= ' ';
                    if (z3) {
                        if (!z4) {
                            break;
                        }
                        length2--;
                    } else if (z4) {
                        i2++;
                    } else {
                        z3 = true;
                    }
                }
                return Intrinsics.areEqual(string, str2.subSequence(i2, length2 + 1).toString());
            }
        }
        return false;
    }

    public final boolean IsPurchasedPlan3() throws PackageManager.NameNotFoundException {
        String str;
        String iAPPlan3 = new LocalStorage(this.mContext).getIAPPlan3();
        if (iAPPlan3 != null) {
            String str2 = iAPPlan3;
            if (str2.length() != 0 && (str = this.mAndroidId) != null && str.length() != 0) {
                String encryptedAndroidId = Util.INSTANCE.getEncryptedAndroidId(this.mContext);
                int length = encryptedAndroidId.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = encryptedAndroidId.charAt(!z ? i : length) <= ' ';
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i++;
                    } else {
                        z = true;
                    }
                }
                String string = encryptedAndroidId.subSequence(i, length + 1).toString();
                int length2 = str2.length() - 1;
                int i2 = 0;
                boolean z3 = false;
                while (i2 <= length2) {
                    boolean z4 = str2.charAt(!z3 ? i2 : length2) <= ' ';
                    if (z3) {
                        if (!z4) {
                            break;
                        }
                        length2--;
                    } else if (z4) {
                        i2++;
                    } else {
                        z3 = true;
                    }
                }
                return Intrinsics.areEqual(string, str2.subSequence(i2, length2 + 1).toString());
            }
        }
        return false;
    }

    public final boolean IsPreviouslyPurchased() throws PackageManager.NameNotFoundException {
        String iap = new LocalStorage(this.mContext).getIAP();
        if (iap != null) {
            String str = iap;
            if (str.length() != 0) {
                String encryptedAndroidId = Util.INSTANCE.getEncryptedAndroidId(this.mContext);
                int length = encryptedAndroidId.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = encryptedAndroidId.charAt(!z ? i : length) <= ' ';
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i++;
                    } else {
                        z = true;
                    }
                }
                String string = encryptedAndroidId.subSequence(i, length + 1).toString();
                int length2 = str.length() - 1;
                int i2 = 0;
                boolean z3 = false;
                while (i2 <= length2) {
                    boolean z4 = str.charAt(!z3 ? i2 : length2) <= ' ';
                    if (z3) {
                        if (!z4) {
                            break;
                        }
                        length2--;
                    } else if (z4) {
                        i2++;
                    } else {
                        z3 = true;
                    }
                }
                return !Intrinsics.areEqual(string, str.subSequence(i2, length2 + 1).toString());
            }
        }
        return false;
    }

    public final void ValidateUserPurchase(FDParseUser fdParseUser) {
        if (fdParseUser == null) {
            return;
        }
        if (fdParseUser.hasPlan1InView() && !IsPurchasedPlan1()) {
            PurchasedPlan1();
        } else if (!fdParseUser.hasPlan1InView() && IsPurchasedPlan1()) {
            RemovePurchasedPlan1();
        }
        if (fdParseUser.hasPlan2InView() && !IsPurchasedPlan2()) {
            PurchasedPlan2();
        } else if (!fdParseUser.hasPlan2InView() && IsPurchasedPlan2()) {
            RemovePurchasedPlan2();
        }
        if (fdParseUser.hasPlan3InView() && !IsPurchasedPlan3()) {
            PurchasedPlan3();
        } else {
            if (fdParseUser.hasPlan3InView() || !IsPurchasedPlan3()) {
                return;
            }
            RemovePurchasedPlan3();
        }
    }
}
