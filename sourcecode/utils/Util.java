package fast.dic.dict.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import com.ironsource.Fc;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.p000const.ConstKt;
import io.sentry.rrweb.RRWebVideoEvent;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Util.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0016\u0010\u0007\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\tJ\u001e\u0010\u000e\u001a\u00020\u000f2\u0016\u0010\u0010\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0011J\u0010\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\"\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0019H\u0007b\u0010\b\u001a\u0012\f\b\u001b\u0012\b\b\fJ\u0004\b\b(\u001cJ\"\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0019H\u0007b\u0010\b\u001a\u0012\f\b\u001b\u0012\b\b\fJ\u0004\b\b(\u001cJ\u0016\u0010&\u001a\u00020\u00052\u0006\u0010'\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u0019R\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001e\u0010\u001e\u001a\u00020\u00138FX\u0087\u0004r\u0002\b!¢\u0006\f\u0012\u0004\b\u001f\u0010\u0003\u001a\u0004\b\u001e\u0010 R\u0011\u0010\"\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%¨\u0006("}, d2 = {"Lfast/dic/dict/utils/Util;", "", "<init>", "()V", "formatString", "", "format", "args", "", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "uniqueInt", "", "getUniqueInt", "()I", "mapToBundle", "Landroid/os/Bundle;", "messageData", "", "isValidUrl", "", "url", "isValidResourceName", "name", "getAndroidId", Names.CONTEXT, "Landroid/content/Context;", "Landroid/annotation/SuppressLint;", "value", "HardwareIds", "getEncryptedAndroidId", "isMemoryReadyForLevenshtein", "isMemoryReadyForLevenshtein$annotations", "()Z", "Lkotlin/jvm/JvmStatic;", "availableInternalMemorySize", "", "getAvailableInternalMemorySize", "()J", "formatSize", RRWebVideoEvent.JsonKeys.SIZE, "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Util {
    public static final Util INSTANCE = new Util();

    @JvmStatic
    public static /* synthetic */ void isMemoryReadyForLevenshtein$annotations() {
    }

    private Util() {
    }

    public final String formatString(String format, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Intrinsics.checkNotNull(format);
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        String str = String.format(locale, format, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final int getUniqueInt() {
        return (int) (System.currentTimeMillis() & 268435455);
    }

    public final Bundle mapToBundle(Map<String, String> messageData) {
        Intrinsics.checkNotNullParameter(messageData, "messageData");
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : messageData.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public final boolean isValidUrl(String url) {
        Matcher matcher = url != null ? Pattern.compile(ConstKt.URL_REGEX).matcher(url) : null;
        return matcher != null && matcher.find();
    }

    public final boolean isValidResourceName(String name) {
        if (name != null) {
            return !new Regex("^[0-9]").matches(name);
        }
        return false;
    }

    public final String getAndroidId(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public final String getEncryptedAndroidId(Context context) throws PackageManager.NameNotFoundException {
        long longVersionCode;
        Intrinsics.checkNotNullParameter(context, "context");
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
        } else {
            longVersionCode = packageInfo.versionCode;
        }
        String str = getAndroidId(context) + longVersionCode;
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = str.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strEncodeToString = Base64.encodeToString(bytes, 0);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    public static final boolean isMemoryReadyForLevenshtein() {
        long nativeHeapSize = Debug.getNativeHeapSize();
        long nativeHeapFreeSize = ((nativeHeapSize - Debug.getNativeHeapFreeSize()) * 100) / nativeHeapSize;
        Logger.INSTANCE.getLogger1().debug("====> usedMemInPercentage = " + nativeHeapFreeSize, new Object[0]);
        return nativeHeapFreeSize < 90;
    }

    public final long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    public final String formatSize(long size, Context context) {
        long j;
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        if (size >= 1024) {
            string = context.getString(R.string.kilobyte);
            long j2 = size / 1024;
            if (j2 >= 1024) {
                string = context.getString(R.string.megabyte);
                j = j2 / 1024;
            } else {
                j = j2;
            }
        } else {
            j = size;
            string = null;
        }
        String strValueOf = String.valueOf((long) Math.ceil(j));
        if (StringsKt.contains$default((CharSequence) strValueOf, (CharSequence) "0", false, 2, (Object) null)) {
            strValueOf = StringsKt.replace$default(strValueOf, "0", "۰", false, 4, (Object) null);
        }
        String strReplace$default = strValueOf;
        if (StringsKt.contains$default((CharSequence) strReplace$default, (CharSequence) "1", false, 2, (Object) null)) {
            strReplace$default = StringsKt.replace$default(strReplace$default, "1", "۱", false, 4, (Object) null);
        }
        String strReplace$default2 = strReplace$default;
        if (StringsKt.contains$default((CharSequence) strReplace$default2, (CharSequence) "2", false, 2, (Object) null)) {
            strReplace$default2 = StringsKt.replace$default(strReplace$default2, "2", "۲", false, 4, (Object) null);
        }
        String strReplace$default3 = strReplace$default2;
        if (StringsKt.contains$default((CharSequence) strReplace$default3, (CharSequence) ExifInterface.GPS_MEASUREMENT_3D, false, 2, (Object) null)) {
            strReplace$default3 = StringsKt.replace$default(strReplace$default3, ExifInterface.GPS_MEASUREMENT_3D, "۳", false, 4, (Object) null);
        }
        String strReplace$default4 = strReplace$default3;
        if (StringsKt.contains$default((CharSequence) strReplace$default4, (CharSequence) "4", false, 2, (Object) null)) {
            strReplace$default4 = StringsKt.replace$default(strReplace$default4, "4", "۴", false, 4, (Object) null);
        }
        String strReplace$default5 = strReplace$default4;
        if (StringsKt.contains$default((CharSequence) strReplace$default5, (CharSequence) CampaignEx.CLICKMODE_ON, false, 2, (Object) null)) {
            strReplace$default5 = StringsKt.replace$default(strReplace$default5, CampaignEx.CLICKMODE_ON, "۵", false, 4, (Object) null);
        }
        String strReplace$default6 = strReplace$default5;
        if (StringsKt.contains$default((CharSequence) strReplace$default6, (CharSequence) "6", false, 2, (Object) null)) {
            strReplace$default6 = StringsKt.replace$default(strReplace$default6, "6", "۶", false, 4, (Object) null);
        }
        String strReplace$default7 = strReplace$default6;
        if (StringsKt.contains$default((CharSequence) strReplace$default7, (CharSequence) Fc.e, false, 2, (Object) null)) {
            strReplace$default7 = StringsKt.replace$default(strReplace$default7, Fc.e, "۷", false, 4, (Object) null);
        }
        String strReplace$default8 = strReplace$default7;
        if (StringsKt.contains$default((CharSequence) strReplace$default8, (CharSequence) "8", false, 2, (Object) null)) {
            strReplace$default8 = StringsKt.replace$default(strReplace$default8, "8", "۸", false, 4, (Object) null);
        }
        String strReplace$default9 = strReplace$default8;
        if (StringsKt.contains$default((CharSequence) strReplace$default9, (CharSequence) "9", false, 2, (Object) null)) {
            strReplace$default9 = StringsKt.replace$default(strReplace$default9, "9", "۹", false, 4, (Object) null);
        }
        StringBuilder sb = new StringBuilder(strReplace$default9);
        for (int length = sb.length() - 3; length > 0; length -= 3) {
            sb.insert(length, ',');
        }
        if (string != null) {
            sb.append(string);
        }
        String string2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return string2;
    }
}
