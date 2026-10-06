package fast.dic.dict.services.analytics;

import android.content.Context;
import android.os.Bundle;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.DialogFragmentNavigator;
import androidx.navigation.fragment.FragmentNavigator;
import com.fyber.inneractive.sdk.external.NativeAdContent;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.messaging.FirebaseMessaging;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.BuildConfigExtKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.StringExtKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: FirebaseSegmentUser.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J*\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007b\u0010\b\u000e\u0012\f\b\u000f\u0012\b\b\fJ\u0004\b\b(\u0010J\"\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0003b\u0010\b\u000e\u0012\f\b\u000f\u0012\b\b\fJ\u0004\b\b(\u0010J\u001a\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\f\u001a\u0004\u0018\u00010\r¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/services/analytics/FirebaseSegmentUser;", "", "<init>", "()V", "addAttribute", "", "attribute", "", "removeAttribute", "trackScreen", "controller", "Landroidx/navigation/NavController;", Names.CONTEXT, "Landroid/content/Context;", "Landroid/annotation/SuppressLint;", "value", "RestrictedApi", "getFragmentLabel", "setUserAttributes", "currentUser", "Lfast/dic/dict/services/parse/FDParseUser;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FirebaseSegmentUser {
    public static final FirebaseSegmentUser INSTANCE = new FirebaseSegmentUser();

    private FirebaseSegmentUser() {
    }

    public final void addAttribute(final String attribute) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        FirebaseMessaging.getInstance().subscribeToTopic(attribute).addOnCompleteListener(new OnCompleteListener() { // from class: fast.dic.dict.services.analytics.FirebaseSegmentUser$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FirebaseSegmentUser.addAttribute$lambda$0(attribute, task);
            }
        });
    }

    static final void addAttribute$lambda$0(String str, Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            Logger.INSTANCE.getLogger1().debug("Subscribed to " + str + " topic.", new Object[0]);
        }
        if (task.getException() != null) {
            Logger.INSTANCE.getLogger1().error("Fail to subscribe to " + str + " topic.", task.getException());
        }
    }

    public final void removeAttribute(final String attribute) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        FirebaseMessaging.getInstance().unsubscribeFromTopic(attribute).addOnCompleteListener(new OnCompleteListener() { // from class: fast.dic.dict.services.analytics.FirebaseSegmentUser$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FirebaseSegmentUser.removeAttribute$lambda$0(attribute, task);
            }
        });
    }

    static final void removeAttribute$lambda$0(String str, Task task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            Logger.INSTANCE.getLogger1().debug("Unsubscribed from " + str + " topic.", new Object[0]);
        }
        if (task.getException() != null) {
            Logger.INSTANCE.getLogger1().error("Fail to unsubscribe from " + str + " topic.", task.getException());
        }
    }

    public final void trackScreen(NavController controller, Context context) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Bundle bundle = new Bundle();
            NavDestination currentDestination = controller.getCurrentDestination();
            FragmentNavigator.Destination destination = currentDestination instanceof FragmentNavigator.Destination ? (FragmentNavigator.Destination) currentDestination : null;
            String className = destination != null ? destination.getClassName() : null;
            if (className != null) {
                bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, className);
            }
            String fragmentLabel = getFragmentLabel(controller);
            bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, fragmentLabel);
            FirebaseAnalytics.getInstance(context).logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, bundle);
            FirebaseCrashlytics.getInstance().setCustomKey(FirebaseAnalytics.Event.SCREEN_VIEW, fragmentLabel);
            FirebaseCrashlytics.getInstance().log("Screen view: " + fragmentLabel);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private final String getFragmentLabel(NavController controller) {
        String string;
        List listSplit$default;
        String str;
        NavDestination currentDestination = controller.getCurrentDestination();
        String str2 = "";
        if (currentDestination == null) {
            return "";
        }
        if (currentDestination instanceof FragmentNavigator.Destination) {
            string = ((FragmentNavigator.Destination) currentDestination).getClassName();
        } else if (currentDestination instanceof DialogFragmentNavigator.Destination) {
            string = ((DialogFragmentNavigator.Destination) currentDestination).getClassName();
        } else {
            CharSequence label = currentDestination.getLabel();
            string = label != null ? label.toString() : null;
        }
        if (string == null) {
            string = currentDestination.getClass().getSimpleName();
        }
        Intrinsics.checkNotNull(string);
        String str3 = (String) CollectionsKt.lastOrNull(StringsKt.split$default((CharSequence) string, new String[]{"."}, false, 0, 6, (Object) null));
        if (str3 != null && (listSplit$default = StringsKt.split$default((CharSequence) str3, new String[]{"/"}, false, 0, 6, (Object) null)) != null && (str = (String) CollectionsKt.lastOrNull(listSplit$default)) != null) {
            str2 = str;
        }
        return StringExtKt.capitalized(str2);
    }

    public final void setUserAttributes(FDParseUser currentUser, Context context) {
        if (context == null || currentUser == null) {
            return;
        }
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
        firebaseAnalytics.setUserId(currentUser.getObjectId());
        if (currentUser.hasPlan1InView()) {
            firebaseAnalytics.setUserProperty("PLAN", "REMOVE_AD");
        } else if (currentUser.hasPlan2InView()) {
            firebaseAnalytics.setUserProperty("PLAN", "PRO_PLAN");
        } else if (currentUser.hasPlan3InView()) {
            firebaseAnalytics.setUserProperty("PLAN", "AI_PLAN");
        } else {
            firebaseAnalytics.setUserProperty("PLAN", "FREE");
        }
        if (BuildConfigExtKt.isBazaar()) {
            firebaseAnalytics.setUserProperty("SOURCE", "CafeBazaar");
        } else if (BuildConfigExtKt.isPlayStore()) {
            firebaseAnalytics.setUserProperty("SOURCE", "PlayStore");
        } else {
            firebaseAnalytics.setUserProperty("SOURCE", NativeAdContent.ViewTag.OTHER);
        }
    }
}
