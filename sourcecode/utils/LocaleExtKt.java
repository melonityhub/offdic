package fast.dic.dict.utils;

import android.content.Context;
import android.content.res.Configuration;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.google.android.play.core.splitinstall.SplitInstallManagerFactory;
import com.google.android.play.core.splitinstall.SplitInstallRequest;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.BuildConfig;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LocaleExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0006\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0004¨\u0006\b"}, d2 = {"updateCurrentLanguage", "", "Ljava/util/Locale;", Names.CONTEXT, "Landroid/content/Context;", "getLocaleFromLanguage", "", "downloadApplicationLanguageResource", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class LocaleExtKt {
    public static final void updateCurrentLanguage(Locale locale, Context context) {
        Intrinsics.checkNotNullParameter(locale, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Configuration configuration = context.getResources().getConfiguration();
        Locale.setDefault(locale);
        configuration.setLocale(locale);
        context.createConfigurationContext(configuration);
        context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
    }

    public static final Locale getLocaleFromLanguage(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String str2 = str;
        return new Locale((String) CollectionsKt.first(StringsKt.split$default((CharSequence) str2, new String[]{"_"}, false, 0, 6, (Object) null)), (String) CollectionsKt.last(StringsKt.split$default((CharSequence) str2, new String[]{"_"}, false, 0, 6, (Object) null)));
    }

    public static final void downloadApplicationLanguageResource(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        SplitInstallManager splitInstallManagerCreate = SplitInstallManagerFactory.create(context);
        Intrinsics.checkNotNullExpressionValue(splitInstallManagerCreate, "create(...)");
        SplitInstallRequest.Builder builderNewBuilder = SplitInstallRequest.newBuilder();
        String[] TRANSLATION_ARRAY = BuildConfig.TRANSLATION_ARRAY;
        Intrinsics.checkNotNullExpressionValue(TRANSLATION_ARRAY, "TRANSLATION_ARRAY");
        Object objFirst = ArraysKt.first(TRANSLATION_ARRAY);
        Intrinsics.checkNotNullExpressionValue(objFirst, "first(...)");
        SplitInstallRequest.Builder builderAddLanguage = builderNewBuilder.addLanguage(getLocaleFromLanguage((String) objFirst));
        String[] TRANSLATION_ARRAY2 = BuildConfig.TRANSLATION_ARRAY;
        Intrinsics.checkNotNullExpressionValue(TRANSLATION_ARRAY2, "TRANSLATION_ARRAY");
        Object objLast = ArraysKt.last(TRANSLATION_ARRAY2);
        Intrinsics.checkNotNullExpressionValue(objLast, "last(...)");
        SplitInstallRequest splitInstallRequestBuild = builderAddLanguage.addLanguage(getLocaleFromLanguage((String) objLast)).build();
        Intrinsics.checkNotNullExpressionValue(splitInstallRequestBuild, "build(...)");
        splitInstallManagerCreate.startInstall(splitInstallRequestBuild);
    }
}
