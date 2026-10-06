package fast.dic.dict.services.parse;

import com.parse.ParseClassName;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.p000const.ConfigConstKt;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: compiled from: FDParseUser.kt */
/* JADX INFO: loaded from: classes11.dex */
@ParseClassName("_User")
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\r\b\u0007\u001a\u0002\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010(\u001a\u00020\rJ\u0006\u0010)\u001a\u00020\rJ\u0006\u0010*\u001a\u00020\rJ\u0006\u0010+\u001a\u00020\rJ\u0006\u0010,\u001a\u00020\rJ\u0006\u0010-\u001a\u00020\rR(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR0\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R0\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u0011\u0010\u0018\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u000eR\u0011\u0010\u001a\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000eR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0013\u0010 \u001a\u0004\u0018\u00010\u001d8F¢\u0006\u0006\u001a\u0004\b!\u0010\u001fR\u0011\u0010\"\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0011\u0010&\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b'\u0010%Ê\u0001\f\b/\u0012\b\b\u0005\u0012\u0004\b\b(0¨\u0006."}, d2 = {"Lfast/dic/dict/services/parse/FDParseUser;", "Lcom/parse/ParseUser;", "<init>", "()V", "Ljavax/inject/Inject;", "value", "", "name", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "isDisabled", "", "()Z", "", "persianResultsOrderBy", "getPersianResultsOrderBy", "()Ljava/util/List;", "setPersianResultsOrderBy", "(Ljava/util/List;)V", "englishResultsOrderBy", "getEnglishResultsOrderBy", "setEnglishResultsOrderBy", "emailVerified", "getEmailVerified", "hasPlan1", "getHasPlan1", "hasPlan2ExpireDate", "Ljava/util/Date;", "getHasPlan2ExpireDate", "()Ljava/util/Date;", "hasPlan3ExpireDate", "getHasPlan3ExpireDate", "translatorSearchedWords", "", "getTranslatorSearchedWords", "()I", "translatorMaxLength", "getTranslatorMaxLength", "removedAds", "hasPlan1InView", "hasPlan2InView", "hasPlan2Or3", "hasPlan3InView", "isFree", "app", "Lcom/parse/ParseClassName;", "_User"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDParseUser extends ParseUser {
    @Inject
    public FDParseUser() {
    }

    public final String getName() {
        return getString("name");
    }

    public final void setName(String str) {
        Intrinsics.checkNotNull(str);
        put("name", str);
    }

    public final boolean isDisabled() {
        return getBoolean("isDisabled");
    }

    public final List<String> getPersianResultsOrderBy() {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = getJSONArray("persianResultsOrderBy");
        if (jSONArray == null) {
            return ConfigConstKt.getDEFAULT_PERSIAN_RESULT_ORDER_BY();
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jSONArray.get(i).toString());
        }
        return arrayList;
    }

    public final void setPersianResultsOrderBy(List<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.isEmpty()) {
            put("persianResultsOrderBy", ConfigConstKt.getDEFAULT_PERSIAN_RESULT_ORDER_BY());
        } else {
            put("persianResultsOrderBy", value);
        }
        saveInBackground();
    }

    public final List<String> getEnglishResultsOrderBy() {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = getJSONArray("englishResultsOrderBy");
        if (jSONArray == null) {
            return ConfigConstKt.getDEFAULT_ENGLISH_RESULT_ORDER_BY();
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            arrayList.add(jSONArray.get(i).toString());
        }
        return arrayList;
    }

    public final void setEnglishResultsOrderBy(List<String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.isEmpty()) {
            put("englishResultsOrderBy", ConfigConstKt.getDEFAULT_ENGLISH_RESULT_ORDER_BY());
        } else {
            put("englishResultsOrderBy", value);
        }
        saveInBackground();
    }

    public final boolean getEmailVerified() {
        return getBoolean("emailVerified");
    }

    public final boolean getHasPlan1() {
        return getBoolean("hasPlan1");
    }

    public final Date getHasPlan2ExpireDate() {
        return getDate("hasPlan2ExpireDate");
    }

    public final Date getHasPlan3ExpireDate() {
        return getDate("hasPlan3ExpireDate");
    }

    public final int getTranslatorSearchedWords() {
        return getInt("translatorSearchedWords");
    }

    public final int getTranslatorMaxLength() {
        return getInt("translatorMaxLength");
    }

    public final boolean removedAds() {
        return !isFree();
    }

    public final boolean hasPlan1InView() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        return fDParseUser != null && fDParseUser.getHasPlan1();
    }

    public final boolean hasPlan2InView() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if ((fDParseUser != null ? fDParseUser.getHasPlan2ExpireDate() : null) == null) {
            return false;
        }
        return Calendar.getInstance().getTime().before(fDParseUser.getHasPlan2ExpireDate());
    }

    public final boolean hasPlan2Or3() {
        return hasPlan2InView() || hasPlan3InView();
    }

    public final boolean hasPlan3InView() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if ((fDParseUser != null ? fDParseUser.getHasPlan3ExpireDate() : null) == null) {
            return false;
        }
        return Calendar.getInstance().getTime().before(fDParseUser.getHasPlan3ExpireDate());
    }

    public final boolean isFree() {
        return (hasPlan1InView() || hasPlan2InView() || hasPlan3InView()) ? false : true;
    }
}
